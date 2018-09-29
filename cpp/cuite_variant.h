#ifndef __CUITE_QVARIANT_H__
#define __CUITE_QVARIANT_H__

#include <QtCore>
#include <QtGui>
#include <QtWidgets>
#include <caml/mlvalues.h>
#include "cuite_support.h"

QVariant cuite_QVariant_from_ocaml(const value& v);
value& cuite_QVariant_to_ocaml(const QVariant *x);
value& cuite_QVariant_to_ocaml(const QVariant& v);

external value cuite_QVariant_null(value);

#endif /*!__CUITE_QVARIANT_H__*/
