#include "cuite_stubs.h"
#include <caml/memory.h>

#include "cuite_stubs.gen.cpp"

external value mlqt_QApplication_new_(value args)
{
  MLQT_Region region;

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
  mlqt_QObject_register_root(app, true);
  return mlqt_QObject_to_ocaml(app);
}
