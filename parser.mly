/* Ocamlyacc parser for MicroC */
%{
open Ast
%}

%token VARIABLE EOF ASSIGN SEMI INT NUC SEQUENCE PLUS MINUS TIMES DIVIDE LPAREN RPAREN COMMA BEGIN END IF ELSEIF ELSE FOR WHILE CONTINUE BREAK 
%token INCLUDE LOCAL THEN RETURN MODULO EXPONENTIAL AND OR NOT EQ NEQ LT LEQ GT GEQ COMPLEMENT TRANSCRIBE TRANSLATE TRANSLATETWO BOOL VOID CHAR
%token DOUBLE AA CODON TRUE FALSE 
%token <int> INT_LIT
%token <string> ID
%token <string> SEQUENCE_LIT
%token <char> CHAR_LIT
%token <float> DOUBLE_LIT


%left PLUS MINUS
%left TIMES DIVIDE
%start program
%type <Ast.program> program

%%

program: 
	stmt EOF {$1}
stmt:
 	vdecl SEMI{$1}
|	SEMI {Semi}
vdecl:
	typename ID ASSIGN typ  { VDecl($1,$2,$4) }
typ:
	INT_LIT {Litint($1)}
|	SEQUENCE_LIT {Sequence($1)}

expr:
    typ 	{$1}
|	expr PLUS expr {Binop($1,Add,$3)}
|	expr MINUS expr {Binop($1,Sub,$3)}
|	expr TIMES expr {Binop($1,Mul,$3)}
|	expr PLUS expr {Binop($1,Div,$3)}

typename:
	INT 	{Int}
|	SEQUENCE {Seq}