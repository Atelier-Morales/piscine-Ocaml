
let main () =
	let joke = ([| "c'est l'histoire de toto qui marche sur une mine...";
		"...et qui perd sa jambe";
		"...mais il continue toujours a marcher sur une jambe";
		"...jusqu'a ce qu'il marche sur une autre mine et perde sa deuxieme jambe";
		"...et soudain il realise qu'il lui reste encore 5 journees de piscine OCaml";
		"...et il qu'il allait devoir coder avec ses mains pour la premiere fois de sa vie"|])
	in
	Random.self_init ();
	print_endline (joke.(Random.int (Array.length joke)))

let () = main ()