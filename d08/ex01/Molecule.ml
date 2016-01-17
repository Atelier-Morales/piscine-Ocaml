
let group_atoms acc atom = 
	match acc with
	| (sym, n)::tail when sym = atom#symbol -> (sym, n + 1)::tail
	| _	 -> (atom#symbol, 1)::acc

let rec hill_notation l acc = match l with
	| [] -> acc
	| (sym, n)::tail when n = 1 -> hill_notation tail (acc ^ sym)
	| (sym, n)::tail -> hill_notation tail (acc ^ sym ^ string_of_int n)

let formulae l =
  let l = List.sort (fun a b -> String.compare a#symbol b#symbol) l in
  let l = List.fold_left group_atoms [] l in
  let l = List.sort (fun (asym, _) (bsym, _) -> String.compare asym bsym) l in
  hill_notation l ""

class virtual molecule name atom_list =
	object
		val _name : string = name
		val _formula : string = formulae atom_list
		val _atoms : Atom.atom list = atom_list

		method name = _name
		method formula = _formula
		method to_string = _name ^ "(" ^ _formula ^ ")"
		method equals (that:molecule) = _formula = that#formula
	end

let h = new Atom.hydrogen
let o = new Atom.oxygen
let c = new Atom.carbon
let n = new Atom.nitrogen
let k = new Atom.potassium
			
class water = 
	object 
		inherit molecule "water" [h; o; h] 
	end
class carbon_dioxyde = 
	object 
		inherit molecule "carbon_dioxyde" [c; o; o] 
	end

class carbon_monoxyde = 
	object 
		inherit molecule "carbon_monoxyde" [c; o] 
	end

class aspirin = 
	object 
		inherit molecule "aspirin" [c; c; c; c; c; c; c; c; c;h ;h ;h ;h ;h ;h ;h ;h ;o ;o ;o ;o] 
	end

class caffeine = 
	object 
		inherit molecule "caffeine" [c; c; c; c; c; c; c; c; h ;h ;h ;h ;h ;h ;h ;h ;h ;h; o ;o; n ;n ;n ;n] 
	end