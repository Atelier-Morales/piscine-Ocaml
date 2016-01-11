
type 'a ft_ref = { mutable a : 'a }

let return x : 'a ft_ref = { a = x }

let set (ref: 'a ft_ref) x = ref.a <- x

let get ({a}: 'a ft_ref) = a

let bind ({a}: 'a ft_ref) f: 'b ft_ref =
	f a

let increment x =
	return (x + 1)

let decrement x =
	return (x - 1)

let main () =
	let test1 = return 10 in
	print_int (test1.a); print_char '\n';
	set test1 20;
	print_int (test1.a); print_char '\n';
	print_int (get test1); print_char '\n';
	print_char '\n';
	let test2 = bind test1 increment in
	print_int (get test2); print_char '\n';
	let test3 = bind test1 decrement in
	print_int (get test3); print_char '\n'

let () = main ()