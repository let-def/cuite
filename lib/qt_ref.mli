(* {{{ COPYING *(

  Copyright (C) 2012  Frédéric Bour  <frederic.bour(_)lakaban.net>

  Permission is hereby granted, free of charge, to any person obtaining a
  copy of this software and associated documentation files (the "Software"),
  to deal in the Software without restriction, including without limitation the
  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
  sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  The Software is provided "as is", without warranty of any kind, express or
  implied, including but not limited to the warranties of merchantability,
  fitness for a particular purpose and noninfringement. In no event shall
  the authors or copyright holders be liable for any claim, damages or other
  liability, whether in an action of contract, tort or otherwise, arising
  from, out of or in connection with the software or the use or other dealings
  in the Software.

)* }}} *)

(** Table allowing to weakly reference values of type 'a with an integer index
  * (useful to simulate pointer to ocaml value in FFI).
  * Allocation/compaction behavior is done in an constant amortized time for
  * each item. *)
type 'a t

(** [create ~compact n] creates a new table with memory preallocated for n items
  * Size is doubled when needed.
  * compact function is called when relocating an item to a new position.
  *)
val create : compact:('a -> int -> unit) -> int -> 'a t

(** References an item in the table *)
val wref : 'a t -> 'a -> int

(** Safe getter *)
val wget : 'a t -> int -> 'a option

(** Quick getter.
 * Raise an exception if the references is invalid, however this case should
 * not happen if memory is managed safely. *)
val wderef : 'a t -> int -> 'a
