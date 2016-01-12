
let sum x y =
	x +. y

let main () =
	let examples = [| 21.2; 12.0; 3.4; nan; 42.42; 0.; -24.2; -12.9 |] in
	let i = ref 0 in
	while !i < (Array.length examples) do
		let j = ref 0 in
		while !j < (Array.length examples) do
			print_float examples.(!i); print_string " + "; print_float examples.(!j);
			print_string " = "; print_float (sum examples.(!i) examples.(!j)); print_char '\n';
			incr j
		done;
		incr i;
	done

let () = main ()