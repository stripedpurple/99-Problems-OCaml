let rec at idx = function
  | [] -> None
  | h :: t -> if idx = 0 then Some h else at (idx - 1) t

(* TESTS *)
let print_option = function
  | Some a -> Printf.printf "\"%s\"\n" a
  | None -> Printf.printf "None\n"

let () =
  let t1 = at 2 [ "a"; "b"; "c"; "d"; "e" ] in
  print_option t1;

  let t2 = at 2 [ "a" ] in
  print_option t2
