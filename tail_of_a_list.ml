let rec last = function [] -> None | [ x ] -> Some x | _ :: t -> last t

(* TESTS *)
let print_option = function
  | Some a -> Printf.printf "\"%s\"\n" a
  | None -> Printf.printf "None\n"

let () =
  let t1 = last [ "a"; "b"; "c"; "d" ] in
  print_option t1;

  let t2 = last [] in
  print_option t2
