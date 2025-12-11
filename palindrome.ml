let is_palindrome list = list = List.rev list

(* Test *)
let print_bool = function
  | true -> print_endline "TRUE"
  | false -> print_endline "FALSE"

let () =
  [ "x"; "a"; "m"; "a"; "x" ] |> is_palindrome |> print_bool;
  [ "a"; "b" ] |> is_palindrome |> print_bool
