let rec list_filter_map f = function
  | [] -> []
  | x :: xs -> match f x with
    | None -> list_filter_map f xs
    | Some y -> y :: list_filter_map f xs

let hash_variant s =
  let accu = ref 0 in
  for i = 0 to String.length s - 1 do
    accu := 223 * !accu + Char.code s.[i]
  done;
  (* reduce to 31 bits *)
  accu := !accu land (1 lsl 31 - 1);
  (* make it signed for 64 bits architectures *)
  if !accu > 0x3FFFFFFF then !accu - (1 lsl 31) else !accu

let fprintf = Printf.fprintf
let sprintf = Printf.sprintf

let println oc fmt =
  Printf.kfprintf (fun oc -> output_char oc '\n') oc fmt

let option_value ~default = function
  | None -> default
  | Some x -> x

let arg_list oc = function
  | [] -> ()
  | x :: xs ->
    output_string oc x;
    List.iter
      (fun x' -> output_char oc ','; output_string oc x')
      xs

let sarg_list () = String.concat ","

let enum_strings fmt i j =
  let rec aux i =
    if i >= j
    then []
    else Printf.sprintf fmt i :: aux (i + 1)
  in
  aux i
