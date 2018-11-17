let rec list_filter_map f = function
  | [] -> []
  | x :: xs -> match f x with
    | None -> list_filter_map f xs
    | Some y -> y :: list_filter_map f xs
