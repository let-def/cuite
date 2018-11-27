type 'flag t = int64

type 'a primitive = 'a
type 'a set = 'a primitive -> 'a t

let empty = 0L

let is_empty repr =
  repr = 0L

let set def flag repr =
  let repr' = def flag in
  if repr' = 0L then 0L else Int64.logor repr repr'

let is_set def flag repr =
  let repr' = def flag in
  if repr' = 0L then repr = 0L else Int64.logand repr repr' <> 0L

let intersection repr repr' =
  Int64.logand repr repr'

let union repr repr' =
  Int64.logor repr repr'

let of_list def flags =
  List.fold_left (fun repr flag -> set def flag repr) empty flags

let singleton def flag =
  set def flag empty
