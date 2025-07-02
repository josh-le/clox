# clox
a bytecode virtual machine for execution of the Lox language written in C
## table of contents
- [running the interpreter](#running-the-interpreter)
- [material covered](#material-covered)
- [formal grammar](#formal-grammar)
- [todo](#todo)
- [resources](#resources)
## running the vm
TODO
## material covered
__built:__
todo
__topics covered:__
todo
## formal grammar
definition of the formal grammar of the lox programming language
> program -> declaration* EOF ;
>
> declaration -> funDecl | varDecl | statement ;
>
> funDecl -> "fun" function ; <br>
> function -> IDENTIFIER "(" parameters? ")" block ; <br>
> varDecl -> "var" IDENTIFIER ( "=" expression )? ";" ; <br>
> parameters -> IDENTIFIER ( "," IDENTIFIER )* ; <br>
>
> statement -> exprStmt | printStmt | block | ifStmt | returnStmt | whileStmt | forStmt ;
>
> exprStmt -> expression ";" ; <br>
> printStmt -> "print" expression ";" ; <br>
> block -> "{" declaration* "}" ; <br>
> ifStmt -> "if" "(" expression ")" statement ( "else" statement )? ; <br>
> returnStmt -> "return" expression? ";" ; <br>
> whileStmt -> "while" "(" expression ")" statement ; <br>
> forStmt -> "for" "(" ( varDecl | exprStmt | ";" ) expression? ";" expression? ")" statement ;
>
> expression -> assignment ; <br>
> assignment -> IDENTIFIER "=" assignment | logic_or ; <br>
> logic_or -> logic_and ( "or" logic_and )* ; <br>
> logic_and -> equality ( "and" equality )* ; <br>
> equality -> comparison ( ( "!=" | "==" ) comparison )* ; <br>
> comparison -> term ( ( ">" | ">=" | "<" | "<=" ) term )* ; <br>
> term -> factor ( ( "-" | "+" ) factor )* ; <br>
> factor -> unary ( ( "\" | "\*" ) unary )\* ; // (IGNORE \'s) ; <br>
> unary -> ( "!" | "-" ) unary | call ; <br>
> call -> primary ( "(" arguments? ")" )* ; <br>
> arguments -> expression ( "," expression )* ; <br>
> primary -> NUMBER | STRING | "true" | "false" | "nil" | "(" expression ")" | IDENTIFIER ;
## todo
nothing rn
## resources
following the book <a href="https://craftinginterpreters.com/">Crafting Interpreters by Robert Nystrom</a>
