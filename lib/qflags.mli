type 'flag set
type 'flag t = private int64

val define : ('flag -> int64) -> 'flag set

val empty : _ t
val is_empty : _ t -> bool
val set : 'flag set -> 'flag -> 'flag t -> 'flag t
val is_set : 'flag set -> 'flag -> 'flag t -> bool
val intersection : 'flag t -> 'flag t -> 'flag t
val union : 'flag t -> 'flag t -> 'flag t
val of_list : 'flag set -> 'flag list -> 'flag t
val singleton : 'flag set -> 'flag -> 'flag t
