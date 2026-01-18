let () =
  let lexbuf = Lexing.from_channel stdin in
  try
    let result = Parser.main Lexer.read lexbuf in
    Printf.printf "Pretty-printed with λ:\n%s\n" result
  with
  | Failure msg -> Printf.eprintf "Error: %s\n" msg
  | Parsing.Parse_error -> Printf.eprintf "Syntax error.\n"
