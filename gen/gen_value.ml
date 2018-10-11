open Shared

open QtCore_enum
open QtGui_enum
open QtWidgets_enum

let () =
  Printf.printf "\
#include <cstdio>
#include <QtCore>
#include <QtGui>
#include <QtWidgets>

int main(void)
{
  puts(\"let value_of = function\");
";
  Dlist.iter all_types (function
      | QFlags {fns; fenum} ->
        List.iter (fun member ->
            let s = fns ^ "::" ^ member in
            Printf.printf "printf(\"  | \\\"%s\\\" -> 0x%%08lxL\\n\", (int64_t)%s);\n" s s
          ) fenum.emembers
      | _ -> ()
    );
  Printf.printf "
  puts(\"  | flag -> invalid_arg (\\\"Unknown flag \\\" ^ flag) \");
  return 0;
}
";
  flush stdout
