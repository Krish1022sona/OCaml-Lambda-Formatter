type token =
  | VAR of (
# 5 "parser.mly"
        string
# 6 "parser.mli"
)
  | LAMBDA
  | DOT
  | LPAREN
  | RPAREN
  | EOF

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string
