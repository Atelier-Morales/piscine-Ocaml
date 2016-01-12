let get_joke_file in_channel =
	let jokes = ref [] in
	begin
		try
			while (42 == 42) do
				let line = input_line in_channel in
				jokes := line::(!jokes)
	  		done
		with
		| End_of_file -> ();
  	end;
  	Array.of_list !jokes

let main () =
	try
		begin
		  	let joke = get_joke_file (open_in Sys.argv.(1))in
		  	if Array.length joke <= 0 then
				failwith "no joke provided";
			Random.self_init ();
			print_endline (joke.(Random.int (Array.length joke)))
		end
  	with
  	| Failure "no joke provided" -> print_endline ("File is empty. Add some joke in it")
  	| Invalid_argument m -> print_endline (m ^ " : no input file")
  	| Sys_error m -> print_endline (m ^ " : input file error")

let () = main ()