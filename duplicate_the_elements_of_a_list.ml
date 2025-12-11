let rec duplicate = function [] -> [] | h :: t -> h :: h :: duplicate t

(* TESTS *)
let print_tuples lst = String.concat "; " lst |> Printf.printf "[%s]"
let () = duplicate [ "a"; "b"; "c"; "c"; "d" ] |> print_tuples
