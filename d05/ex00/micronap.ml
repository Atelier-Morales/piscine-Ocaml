let my_sleep () = Unix.sleep 1

let main () =
	let i = ref 0 in
	let loop n =
		while !i < n do
			my_sleep ();
			incr i
		done
	in
	if (Array.length Sys.argv) > 1
	then
		try loop (int_of_string(Sys.argv.(1))) with
		| _ -> ()
	else ()

let () = main ()

(* must compile with unix.cmxa *)