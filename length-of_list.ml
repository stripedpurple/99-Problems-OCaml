let length list =
  let rec length' n = function [] -> n | _ :: t -> length' (n + 1) t in
  length' 0 list

(* TESTS *)
let print_num n =
  begin
    print_int n;
    print_newline ()
  end

let () =
  let t1 = length [ "a"; "b"; "c" ] in
  print_num t1;

  let t2 = length [] in
  print_num t2
