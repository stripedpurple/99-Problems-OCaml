let range start finish =
  let rec aux acc s e =
    match (s, e) with
    | a, b when a > b -> []
    | a, b when a = b -> a :: acc
    | a, b -> aux (a :: acc) (a + 1) b
  in
  List.rev (aux [] start finish)

(* TESTS *)
let int_to_string_list il = List.map (fun i -> string_of_int i) il

let rec print_list list =
  list |> int_to_string_list |> String.concat "; " |> Printf.printf "[%s]\n"

let () = range (max_int - 1000000) max_int |> print_list
let () = range 4 9 |> print_list
let () = range 9 4 |> print_list
(* - : int list = [4; 5; 6; 7; 8; 9] *)
