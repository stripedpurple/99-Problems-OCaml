type 'a node = One of 'a | Many of 'a node list

let flatten list =
  let rec flat nl = function
    | [] -> nl
    | One h :: t -> flat (h :: nl) t
    | Many h :: t -> flat (flat nl h) t
  in
  List.rev (flat [] list)

(* Test *)
let print_list list = print_string (String.concat ", " list)

let () =
  [ One "a"; Many [ One "b"; Many [ One "c"; One "d" ]; One "e" ] ]
  |> flatten |> print_list
