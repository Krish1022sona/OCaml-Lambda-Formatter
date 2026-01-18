# OCaml Lambda Calculus Formatter

A syntax-directed translator built in OCaml that parses ASCII Lambda Calculus expressions and converts them into canonical Unicode notation.

> **Note:** This project is based on course materials from **ABV-IIITM Gwalior** (Paradigms of Programming Language, CS205). It was developed to explore Lexer/Parser generation using OCaml.

## 🔧 How It Works
This project implements a complete Lexer/Parser pipeline using **ocamllex** and **ocamlyacc**. It reads raw strings from `stdin`, constructs the parse tree implicitly, and performs a syntax-directed translation to output formatted text.

### Features
* **Unicode Transformation:** Converts ASCII `\` to the mathematical `λ` symbol.
* **Automatic Disambiguation:** Automatically adds parentheses to function applications to ensure correct associativity.
* **Error Handling:** Catches syntax errors in malformed lambda expressions.

## 📐 The Grammar
The parser accepts the following Context-Free Grammar (CFG):

$$
\begin{aligned}
\text{Expr} &\to \lambda \: \text{VAR} \: . \: \text{Expr} \\
&\mid \: \text{Expr} \: \text{Expr} \quad (\text{Function Application}) \\
&\mid \: ( \: \text{Expr} \: ) \\
&\mid \: \text{VAR}
\end{aligned}
$$

## 🚀 Usage

### 1. Compile
```bash
ocamllex lexer.mll
ocamlyacc parser.mly
ocamlc -c parser.mli
ocamlc -c lexer.ml parser.ml main.ml
ocamlc -o lambda.exe lexer.cmo parser.cmo main.cmo
```
### 2. Run
On Windows:

```PowerShell
.\lambda.exe
\x.x y 
# Press Enter, then Ctrl+Z, then Enter again.
```
On Linux:

```bash
./lambda.exe
\x.x y 
# Press Enter, then Ctrl+D (EOF).
```