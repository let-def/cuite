#ifndef __MLQT_QVARIANT_H__
#define __MLQT_QVARIANT_H__

#include <QtCore>
#include <QtGui>
#include <QtWidgets>
#include <caml/mlvalues.h>
#include "mlqt_support.h"

QVariant mlqt_QVariant_from_ocaml(const value& v);
value& mlqt_QVariant_to_ocaml(const QVariant *x);
value& mlqt_QVariant_to_ocaml(const QVariant& v);

external value mlqt_QVariant_null(value);

#endif /*!__MLQT_QVARIANT_H__*/
