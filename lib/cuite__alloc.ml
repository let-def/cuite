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

type 'a t =
    { mutable weak : 'a Weak.t
    ; mutable first_free : int
    ; compact : ('a -> int -> unit)
    }

let create ~compact n =
  let n = max n 1 in
  { weak = Weak.create n
  ; first_free = 0
  ; compact = compact
  }

let resize t n =
  let n = max n 1 in
  let weak = Weak.create n in
  let count = min n (min t.first_free (Weak.length t.weak)) in
  Weak.blit t.weak 0 weak 0 count;
  t.weak <- weak

let compact ({ weak } as t) =
  let rec scan_left l r =
    if l > r then l
    else match Weak.get weak l with
      | Some _ -> scan_left (succ l) r
      | None -> scan_right l r

  and scan_right l r =
       (* - l is a free cell
          - we scan from r downto l hoping to find an allocated cell
          - if we find one : we relocate it to position l
          - if we don't find one (r reach l), we have finished and
            l is the first unallocated cell *)
    if l = r then l
    else match Weak.get weak r with
      | Some c as cell ->
          (* Relocate c from r to l *)
          t.compact c l;
          Weak.set weak l cell;
          Weak.set weak r None;
          scan_left (succ l) (pred r)
      | None ->
          scan_right l (pred r)
  in
  t.first_free <- scan_left 0 (Weak.length weak - 1)

let realloc t =
  compact t;
  match Weak.length t.weak, t.first_free with
    (* Fill factor < 0.125, compact  *)
    | total, fill when fill <= total * 1 / 8 ->
        resize t (fill * 2)
    (* Fill factor too small : grow table *)
    | total, fill when fill >= total * 1 / 2 ->
        resize t (total * 2)
    (* Average fill factor, do nothing *)
    | _ -> ()

let wref t v =
  if t.first_free = Weak.length t.weak then realloc t;
  let index = t.first_free in
  Weak.set t.weak index (Some v);
  t.first_free <- succ index;
  index

let wget { weak } i =
  Weak.get weak i

let wderef { weak } i = match Weak.get weak i with
  | Some v -> v
  | None -> failwith "Invalid index, should not be reachable"
