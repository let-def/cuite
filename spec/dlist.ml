type 'a t = {
  mutable head: 'a list;
  mutable tail: 'a list;
}
let empty () = { head = []; tail = [] }
let prepend d x = d.head <- x :: d.head
let append d x = d.tail <- x :: d.tail
let prepend_all d x = d.head <- x @ d.head
let append_all d x = d.tail <- List.rev_append x d.tail
let read d = match d.tail with
  | [] -> d.head
  | items ->
    d.head <- d.head @ List.rev items;
    d.tail <- [];
    d.head
let iter d f = List.iter f (read d)
