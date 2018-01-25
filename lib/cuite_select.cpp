#define CAML_NAME_SPACE

#include <caml/alloc.h>
#include <caml/callback.h>
#include <caml/custom.h>
#include <caml/fail.h>
#include <caml/memory.h>
#include <caml/mlvalues.h>
#include <caml/signals.h>
#include "cuite_support.h"

#include <QApplication>
#include <QTimer>
#include <QEventLoop>
#include <QSocketNotifier>

struct QSelect : QObject
{
    QTimer timer;
    QEventLoop loop;

    int *rfds, nrfds;
    int *wfds, nwfds;

    QSelect()
      : rfds(NULL), wfds(NULL)
    {
        QObject::connect(&this->timer, &QTimer::timeout, &this->loop, &QEventLoop::quit);
        this->timer.setSingleShot(true);
    }

    ~QSelect()
    {
      this->rfds = (int*)realloc((void*)this->rfds, 0);
      this->wfds = (int*)realloc((void*)this->wfds, 0);
    }

    int *allocateReadable(int size)
    {
      this->nrfds = size;
      this->rfds = (int*)realloc((void*)this->rfds, size * sizeof(int));
      return this->rfds;
    }

    int *allocateWritable(int size)
    {
      this->nwfds = size;
      this->wfds = (int*)realloc((void*)this->wfds, size * sizeof(int));
      return this->wfds;
    }

    bool unix_select(void)
    {
      struct timeval notimeout;
      notimeout.tv_sec = 0;
      notimeout.tv_usec = 0;
      int result;
      fd_set readset, writeset;
      do {
        FD_ZERO(&readset);
        int maxfd = 0;
        for (int i = 0; i < this->nrfds; ++i)
        {
          FD_SET(this->rfds[i], &readset);
          if (this->rfds[i] > maxfd) maxfd = this->rfds[i];
        }
        FD_ZERO(&writeset);
        for (int i = 0; i < this->nwfds; ++i)
        {
          FD_SET(this->wfds[i], &writeset);
          if (this->wfds[i] > maxfd) maxfd = this->wfds[i];
        }
        result = select(maxfd + 1, &readset, &writeset, NULL, &notimeout);
      } while (result == -1 && errno == EINTR);

      if (result == -1 || result == 0)
        return false;

      int nrfds0 = this->nrfds, nwfds0 = this->nwfds;
      this->nrfds = this->nwfds = 0;

      for (int i = 0; i < nrfds0; ++i)
        if (FD_ISSET(this->rfds[i], &readset))
          this->rfds[this->nrfds++] = this->rfds[i];

      for (int i = 0; i < nwfds0; ++i)
        if (FD_ISSET(this->wfds[i], &writeset))
          this->wfds[this->nwfds++] = this->wfds[i];

      return true;
    }

    void runStepSlow(int timeout)
    {
        int total = this->nrfds + this->nwfds;
        QSocketNotifier **notifiers =
          (QSocketNotifier **)calloc(this->nrfds + this->nwfds, sizeof(QSocketNotifier*));

        for (int i = 0; i < this->nrfds; ++i)
        {
            QSocketNotifier *notifier = new QSocketNotifier(rfds[i], QSocketNotifier::Read);
            QObject::connect(notifier, &QSocketNotifier::activated, &this->loop, &QEventLoop::quit);
            notifier->setEnabled(true);
            notifiers[i] = notifier;
        }
        for (int i = 0; i < this->nwfds; ++i)
        {
            QSocketNotifier *notifier = new QSocketNotifier(wfds[i], QSocketNotifier::Write);
            QObject::connect(notifier, &QSocketNotifier::activated, &this->loop, &QEventLoop::quit);
            notifier->setEnabled(true);
            notifiers[this->nrfds + i] = notifier;
        }
        this->nrfds = this->nwfds = 0;

        if (timeout >= 0)
          this->timer.start(timeout);
        if (!unix_select())
          this->loop.exec();
        if (timeout >= 0)
          this->timer.stop();

        for (int i = 0; i < total; ++i)
            delete notifiers[i];
        free((void*)notifiers);
    }

    bool runStepFast(int timeout)
    {
      QApplication::processEvents(QEventLoop::AllEvents, timeout);
      return unix_select();
    }

    void runStep(int timeout)
    {
      struct timespec tstart, tnow;
      if (clock_gettime(CLOCK_MONOTONIC, &tstart) == -1)
        abort();

      if (runStepFast(timeout))
        return;

      if (clock_gettime(CLOCK_MONOTONIC, &tnow) == -1)
        abort();

      int delta =
        (tnow.tv_sec - tstart.tv_sec) * 1000
        + tnow.tv_nsec/1000/1000 - tstart.tv_nsec/1000/1000;

      if (delta > timeout)
      {
        this->nrfds = this->nwfds = 0;
        return;
      }
      else
        timeout -= delta;

      runStepSlow(timeout);
      unix_select();
    }

};

external value cuite_select(value _vrfds, value _vwfds, value timeout)
{
  static QSelect *instance = NULL;
  if (instance == NULL)
    instance = new QSelect();

  CUITE_Region region;
  value& vrfds = cuite_region_register(_vrfds);
  value& vwfds = cuite_region_register(_vwfds);
  int nrfds = Wosize_val(vrfds);
  int nwfds = Wosize_val(vwfds);

  int *rfds = instance->allocateReadable(Wosize_val(vrfds));
  for (int i = 0; i < nrfds; ++i)
    rfds[i] = Long_val(Field(vrfds, i));

  int *wfds = instance->allocateWritable(Wosize_val(vwfds));
  for (int i = 0; i < nwfds; ++i)
    wfds[i] = Long_val(Field(vwfds, i));

  //caml_enter_blocking_section();
  instance->runStep(Long_val(timeout));
  //caml_leave_blocking_section();

  nrfds = instance->nrfds;
  nwfds = instance->nwfds;

  for (int i = 0; i < nrfds; ++i)
    Field(vrfds, i) = Val_long(rfds[i]);

  for (int i = 0; i < nwfds; ++i)
    Field(vwfds, i) = Val_long(wfds[i]);

  value result = caml_alloc(2, 0);
  Field(result, 0) = Val_long(nrfds);
  Field(result, 1) = Val_long(nwfds);

  return result;
}
