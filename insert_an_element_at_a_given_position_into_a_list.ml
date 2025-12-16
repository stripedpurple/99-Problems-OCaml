let rec insert_at el count = function
  | [] -> []
  | h :: t ->
      if count = 0 then el :: h :: t else h :: insert_at el (count - 1) t

(* TESTS *)
let rec print_list list = print_endline ("[" ^ String.concat "; " list ^ "]")
let () = insert_at "alfa" 1 [ "a"; "b"; "c"; "d" ] |> print_list

(* - : string list = ["a"; "alfa"; "b"; "c"; "d"] *)
