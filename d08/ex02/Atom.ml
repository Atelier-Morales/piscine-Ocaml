
class virtual atom name symbol atomic_number =
	object
		val _name : string = name
		val _symbol : string = symbol
		val _atomic_number : int = atomic_number

		method name = _name		
		method symbol = _symbol
		method atomic_number = _atomic_number

		method to_string = _name ^ ": " ^ _symbol ^ " - " ^ (string_of_int _atomic_number)

		 method equals (that:atom) = _atomic_number = that#atomic_number
	end

class hydrogen = 
	object 
		inherit atom "hydrogen" "H" 1 
	end

class carbon = 
	object 
		inherit atom "carbon" "C" 6 
	end

class oxygen = 
	object 
		inherit atom "oxygen" "O" 8 
	end

class calcium = 
	object 
		inherit atom "calcium" "Ca" 20 
	end

class helium = 
	object 
		inherit atom "helium" "He" 2 
	end

class nitrogen = 
	object 
		inherit atom "nitrogen" "N" 7 
	end

class magnesium = 
	object 
		inherit atom "magnesium" "Mg" 12 
	end

class uranium =
	object
		inherit atom "uranium" "U" 92
	end

class aluminum = 
	object 
		inherit atom "aluminum" "Al" 13 
	end

class potassium = 
	object 
		inherit atom "potassium" "K" 19 
	end

class sodium = 
	object 
		inherit atom "sodium" "Na" 11 
	end