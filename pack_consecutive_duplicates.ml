let pack list =
  let rec aux current acc = function
    | [] -> []
    | [ x ] -> (x :: current) :: acc
    | a :: (b :: _ as t) ->
        if a = b then aux (a :: current) acc t
        else aux [] ((a :: current) :: acc) t
  in
  aux [] [] list |> List.rev

(* Test *)
let pp_lol lol =
  List.iter
    (fun sub ->
      List.iter (Printf.printf "%s ") sub;
      print_newline ())
    lol

let () =
  [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  |> pack |> pp_lol
