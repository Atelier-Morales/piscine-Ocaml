let () =
	print_endline "Atom list:";
	print_endline (new Atom.hydrogen)#to_string;
	print_endline (new Atom.carbon)#to_string;
	print_endline (new Atom.oxygen)#to_string;
	print_endline (new Atom.calcium)#to_string;
	print_endline (new Atom.helium)#to_string;
	print_endline (new Atom.nitrogen)#to_string;
	print_endline (new Atom.magnesium)#to_string;
	print_endline (new Atom.uranium)#to_string;
	print_endline (new Atom.aluminum)#to_string;
	print_endline (new Atom.potassium)#to_string;
	print_endline (new Atom.sodium)#to_string;
	print_char '\n';
	print_endline "Molecule list :";
	print_endline (new Molecule.water)#to_string;
	print_endline (new Molecule.carbon_dioxyde)#to_string;
	print_endline (new Molecule.carbon_monoxyde)#to_string;
  	print_endline (new Molecule.aspirin)#to_string;
  	print_endline (new Molecule.caffeine)#to_string;
  	print_endline (string_of_bool ((new Molecule.water)#equals (new Molecule.water)));
  	print_endline (string_of_bool ((new Molecule.water)#equals (new Molecule.aspirin)))