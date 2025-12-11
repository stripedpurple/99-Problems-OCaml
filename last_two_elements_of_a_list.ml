let rec last_two = function
  | [] | [ _ ] -> None
  | [ a; b ] -> Some (a, b)
  | _ :: t -> last_two t

(* TESTS *)
let print_option = function
  | Some (a, b) -> Printf.printf "(\"%s\", \"%s\")\n" a b
  | None -> Printf.printf "None\n"

let () =
  let t1 = last_two [ "a"; "b"; "c"; "d" ] in
  print_option t1;

  let t2 = last_two [ "a" ] in
  print_option t2
