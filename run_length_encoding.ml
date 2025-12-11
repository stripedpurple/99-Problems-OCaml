let encode list =
  let rec aux count acc = function
    | [] -> [] (* Can only be reached if original list is empty *)
    | [ x ] -> (count + 1, x) :: acc
    | a :: (b :: _ as t) ->
        if a = b then aux (count + 1) acc t else aux 0 ((count + 1, a) :: acc) t
  in
  List.rev (aux 0 [] list)

(* TESTS *)
let rec print_tuples = function
  | [] -> ()
  | (a, b) :: rest ->
      Printf.printf "( %i, %s ); " a b;
      print_tuples rest

let () =
  [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  |> encode |> print_tuples
