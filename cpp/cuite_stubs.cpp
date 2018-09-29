#include "cuite_stubs.h"

external value cuite_QApplication_new_0(value args)
{
  CUITE_Region region;

  static int argc;
  static char **argv = NULL;
  if (argv != NULL)
  {
    for (int i = 0; i < argc; i++)
      free(argv[i]);
    free(argv);
  }
  argv = (char **)calloc(argc + 1, sizeof(char *));
  argc = caml_array_length(args);

  for (int i = 0; i < argc; ++i)
    argv[i] = strdup(String_val(Field(args, i)));

  QApplication *app = new QApplication(argc, argv);
  cuite_QObject_register_root(app, true);
  return cuite_QObject_to_ocaml(app);
}

external value cuite_QApplication_exec0(value unit)
{
  CUITE_WITHOUT_OCAML;
  return Val_long(QApplication::exec());
}

