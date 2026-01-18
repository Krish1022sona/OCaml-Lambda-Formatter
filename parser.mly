%{
open Lexing
%}

%token <string> VAR
%token LAMBDA DOT LPAREN RPAREN EOF
%start main
%type <string> main
%%

main:
expr EOF { $1 }

expr:
LAMBDA VAR DOT expr   { "λ" ^ $2 ^ "." ^ $4 }
| expr expr           { "(" ^ $1 ^ " " ^ $2 ^ ")" }
| LPAREN expr RPAREN  { "(" ^ $2 ^ ")" }
| VAR                 { $1 }
