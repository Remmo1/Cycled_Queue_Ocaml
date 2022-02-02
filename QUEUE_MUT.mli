type 'a t
exception Empty of string
exception Full of string
val empty: int -> 'a t
val isEmpty: 'a t -> bool
val isFull: 'a t -> bool
val enqueue: 'a * 'a t -> unit
val dequeue: 'a t -> unit
val first: 'a t -> 'a


