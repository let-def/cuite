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

let println oc fmt =
  Printf.kfprintf (fun oc -> output_char oc '\n') oc fmt

let option_value ~default = function
  | None -> default
  | Some x -> x
