let rev list =
  let rec rev' nl = function [] -> nl | h :: t -> rev' (h :: nl) t in
  rev' [] list

(* TESTS *)
let print_list list = print_string (String.concat ", " list)

let () =
  let t1 = rev [ "a"; "b"; "c"; "d" ] in
  print_list t1;

  let t2 = rev [] in
  print_list t2
