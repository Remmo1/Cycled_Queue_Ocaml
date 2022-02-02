type 'a t = { 
  anArray : 'a option array;
  mutable first: int; 
  mutable last: int 
}

exception Empty of string

exception Full of string

let empty n = { 
  anArray = Array.make (n + 1) None;
  first = 0; 
  last = 0 
}
			
let isEmpty queue = queue.last = queue.first

let isFull queue = 
  queue.first - queue.last = -1 || 
  queue.first - queue.last = Array.length queue.anArray - 1

			
let enqueue (element, queue) =
  begin
    if (isFull queue) then raise (Full "module QUEUE_MUT: enqueue")

    else 
      queue.anArray.(queue.first) <- Some element;
    if queue.first = (Array.length queue.anArray) - 1 
    then queue.first <- 0 
    else queue.first <- succ(queue.first)
  end


let dequeue queue =
  if (isEmpty queue) then ()
  else 
  if queue.last = (Array.length queue.anArray) - 1 
  then queue.last <- 0 
  else queue.last <- succ(queue.last)

let first queue =
  if (isEmpty queue) then raise (Empty "module QUEUE_MUT: first")
  else match (queue.anArray.(queue.last)) with
      Some value -> value
    | None ->  failwith "module QUEUE_MUT: first (implementation error!!!)"


