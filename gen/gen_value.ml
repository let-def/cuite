open Shared

open QtCore_enum
open QtGui_enum
open QtWidgets_enum

let () =
  let out = open_out "/tmp/gen_value.cpp" in
  Printf.fprintf out "\
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
            Printf.fprintf out "printf(\"  | \\\"%s\\\" -> 0x%%08lxL\\n\", (int64_t)%s);\n" s s
          ) fenum.emembers
      | _ -> ()
    );
  Printf.fprintf out "
  puts(\"  | flag -> invalid_arg (\\\"Unknown flag \\\" ^ flag) \");
  return 0;
}
";
  close_out out;
  match Sys.command "g++ -fPIC `pkg-config --cflags --libs Qt5Gui Qt5Widgets` -DQT_KEYPAD_NAVIGATION -o /tmp/gen_value /tmp/gen_value.cpp" with
  | 0 -> exit (Sys.command "/tmp/gen_value")
  | n -> exit n
