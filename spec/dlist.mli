type 'a t
val empty : unit -> 'a t
val prepend : 'a t -> 'a -> unit
val append : 'a t -> 'a -> unit
val prepend_all : 'a t -> 'a list -> unit
val append_all : 'a t -> 'a list -> unit
val read : 'a t -> 'a list
val iter : 'a t -> ('a -> unit) -> unit
