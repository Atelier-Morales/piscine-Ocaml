
let get_alkane = function
    | 1 -> "methane"
    | 2 -> "ethane"
    | 3 -> "propane"
    | 4 -> "butane"
    | 5 -> "pentane"
    | 6 -> "hexane"
    | 7 -> "heptane"
    | 8 -> "octane"
    | 9 -> "nonane"
    | 10 -> "decane"
    | 11 -> "undecane"
    | 12 -> "dodecane"
    | 13 -> "tridecane"
    | 14 -> "tetradecane"
    | 15 -> "pentadecane"
    | 16 -> "cetane"
    | 17 -> "heptadecane"
    | 18 -> "octadecane"
    | 19 -> "nonadecane"
    | 20 -> "eicosane"
    | 21 -> "heneicosane"
    | 22 -> "docosane"
    | 23 -> "tricosane"
    | 24 -> "tetracosane"
    | 25 -> "pentacosane"
    | 26 -> "hexacosane"
    | 27 -> "heptacosane"
    | 28 -> "octacosane"
    | 29 -> "nonacosane"
    | 30 -> "triacontane"
    | 31 -> "untriacontane"
    | 32 -> "dotriacontane"
    | 33 -> "tritriacontane"
    | 34 -> "tetratriacontane"
    | 35 -> "pentatriacontane"
    | 36 -> "hexatriacontane"
    | 37 -> "heptatriacontane"
    | 38 -> "octatriacontane"
    | 39 -> "nonatriacontane"
    | 40 -> "tetracontane"
    | _ -> "unknown alkane"

let get_atom_list n =
  let rec loop l n acc =
    match n with
    | 0             -> acc
    | _             -> loop l (n - 1) (l::acc)
  in
  if n < 0 then
    failwith "wrong arg"
  else
    (loop (new Atom.carbon) n []) @ (loop (new Atom.hydrogen) (2 * n + 2) [])

class alkane n = 
    object
        inherit Molecule.molecule (get_alkane n) (get_atom_list n)
    end