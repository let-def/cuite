let is_keyword = function
  | "type"  | "open"   | "match"
  | "class" | "object" | "method"
  | "begin" | "end"    | "done" -> true
  | _ -> false

let protect_keyword s =
  if is_keyword s then s ^ "_" else s

let mangle escape_char s =
  let is_valid = function
    | 'a'..'z' | 'A'..'Z' | '0'..'9' -> true
    | _ -> false
  in
  if is_keyword s then s ^ "_" else (
    match String.iter (fun c -> if not (is_valid c) then raise Exit) s with
    | () -> s
    | exception Exit ->
      let b = Buffer.create (String.length s) in
      let escaped = ref false in
      String.iter (fun c ->
          if is_valid c then (
            escaped := false;
            Buffer.add_char b c
          ) else if not !escaped then (
            escaped := true;
            Buffer.add_char b escape_char
          )
        ) s;
      Buffer.contents b
  )

let lident s =
  let s = mangle '\'' s in
  assert (s <> "");
  match s.[0] with
  | 'a'..'z' | '_' -> s
  | 'A'..'Z' -> String.uncapitalize_ascii s
  | _ -> "q" ^ s

let uident s =
  let s = mangle '\'' s in
  assert (s <> "");
  match s.[0] with
  | 'A'..'Z' -> s
  | 'a'..'z' -> String.capitalize_ascii s
  | _ -> "Q" ^ s

let ident s =
  let s = mangle '\'' s in
  assert (s <> "");
  match s.[0] with
  | 'A'..'Z' | 'a'..'z' | '_' -> s
  | _ -> "q" ^ s

let cident s = mangle '_' s

