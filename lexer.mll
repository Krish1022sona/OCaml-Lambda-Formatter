{
open Parser
}

rule read = parse
| [' ' '\t' '\n']     { read lexbuf }
| '\\'                { LAMBDA }
| '.'                 { DOT }
| '('                 { LPAREN }
| ')'                 { RPAREN }
| ['a'-'z']+ as id    { VAR id }
| eof                 { EOF }
| _                   { failwith "Unexpected character" }
