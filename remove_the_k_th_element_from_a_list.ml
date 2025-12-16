let rec remove_at count = function
  | [] -> []
  | h :: t -> if count = 0 then t else h :: remove_at (count - 1) t

(* TESTS *)
let rec print_list list = print_endline ("[" ^ String.concat "; " list ^ "]")
let () = remove_at 0 [ "a"; "b"; "c"; "d" ] |> print_list
let () = remove_at 3 [ "a"; "b"; "c"; "d" ] |> print_list
let () = remove_at 1 [ "a"; "b"; "c"; "d" ] |> print_list
(* - : string list = ["a"; "c"; "d"] *)
