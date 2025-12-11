let split lst count =
  let rec aux acc lst = function
    | 0 -> (List.rev acc, lst)
    | c -> (
        match lst with [] -> aux acc [] 0 | h :: t -> aux (h :: acc) t (c - 1))
  in
  aux [] lst count

(* TESTS *)
let print_tuple tpl =
  let a, b = tpl in
  Printf.printf "( [%s], [%s] ); " (String.concat "; " a) (String.concat "; " b);
  print_newline ()

let () =
  split [ "a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j" ] 3 |> print_tuple

(* 
   - : string list * string list = 
       (["a"; "b"; "c"], ["d"; "e"; "f"; "g"; "h"; "i"; "j"]) 
       *)
let () = split [ "a"; "b"; "c"; "d" ] 5 |> print_tuple
(* - : string list * string list = (["a"; "b"; "c"; "d"], []) *)
