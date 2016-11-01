type token =
  | ASSIGN
  | OR
  | AND
  | NOT
  | NEG
  | LT
  | LEQ
  | EQ
  | NEQ
  | GEQ
  | GT
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | MODULO
  | EXPONENTIAL
  | COMPLEMENT
  | TRANSCRIBE
  | TRANSLATE
  | TRANSLATETWO
  | BEGIN
  | END
  | IF
  | ELSEIF
  | ELSE
  | THEN
  | FOR
  | WHILE
  | CONTINUE
  | BREAK
  | NUC
  | INT
  | DOUBLE
  | AA
  | BOOL
  | CHAR
  | VOID
  | CODON
  | SEQUENCE
  | TRUE
  | FALSE
  | LPAREN
  | RPAREN
  | SEMI
  | COMMA
  | COLON
  | INCLUDE
  | RETURN
  | EOF
  | LOCAL
  | VARIABLE
  | INT_LIT of (int)
  | ID of (string)
  | SEQUENCE_LIT of (string)
  | CHAR_LIT of (char)
  | DOUBLE_LIT of (float)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Ast
# 65 "parser.ml"
let yytransl_const = [|
  257 (* ASSIGN *);
  258 (* OR *);
  259 (* AND *);
  260 (* NOT *);
  261 (* NEG *);
  262 (* LT *);
  263 (* LEQ *);
  264 (* EQ *);
  265 (* NEQ *);
  266 (* GEQ *);
  267 (* GT *);
  268 (* PLUS *);
  269 (* MINUS *);
  270 (* TIMES *);
  271 (* DIVIDE *);
  272 (* MODULO *);
  273 (* EXPONENTIAL *);
  274 (* COMPLEMENT *);
  275 (* TRANSCRIBE *);
  276 (* TRANSLATE *);
  277 (* TRANSLATETWO *);
  278 (* BEGIN *);
  279 (* END *);
  280 (* IF *);
  281 (* ELSEIF *);
  282 (* ELSE *);
  283 (* THEN *);
  284 (* FOR *);
  285 (* WHILE *);
  286 (* CONTINUE *);
  287 (* BREAK *);
  288 (* NUC *);
  289 (* INT *);
  290 (* DOUBLE *);
  291 (* AA *);
  292 (* BOOL *);
  293 (* CHAR *);
  294 (* VOID *);
  295 (* CODON *);
  296 (* SEQUENCE *);
  297 (* TRUE *);
  298 (* FALSE *);
  299 (* LPAREN *);
  300 (* RPAREN *);
  301 (* SEMI *);
  302 (* COMMA *);
  303 (* COLON *);
  304 (* INCLUDE *);
  305 (* RETURN *);
    0 (* EOF *);
  306 (* LOCAL *);
  307 (* VARIABLE *);
    0|]

let yytransl_block = [|
  308 (* INT_LIT *);
  309 (* ID *);
  310 (* SEQUENCE_LIT *);
  311 (* CHAR_LIT *);
  312 (* DOUBLE_LIT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\003\000\005\000\008\000\
\008\000\010\000\010\000\011\000\011\000\009\000\009\000\009\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\012\000\012\000\004\000\004\000\004\000\004\000\004\000\004\000\
\014\000\014\000\014\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\007\000\013\000\013\000\015\000\015\000\016\000\016\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\002\000\005\000\008\000\000\000\
\001\000\002\000\004\000\000\000\002\000\000\000\002\000\002\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\000\000\002\000\002\000\003\000\003\000\009\000\005\000\006\000\
\000\000\005\000\002\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\002\000\002\000\002\000\002\000\002\000\002\000\003\000\003\000\
\004\000\000\000\001\000\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\072\000\000\000\000\000\000\000\000\000\025\000\
\000\000\000\000\000\000\023\000\017\000\021\000\022\000\018\000\
\020\000\019\000\024\000\036\000\037\000\000\000\000\000\001\000\
\039\000\000\000\042\000\040\000\041\000\003\000\004\000\005\000\
\000\000\000\000\058\000\057\000\059\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\060\000\061\000\062\000\
\027\000\029\000\026\000\014\000\000\000\014\000\064\000\028\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\048\000\000\000\000\000\000\000\065\000\
\000\000\000\000\000\000\000\000\000\000\000\000\014\000\015\000\
\016\000\000\000\000\000\000\000\031\000\000\000\006\000\010\000\
\014\000\000\000\000\000\000\000\000\000\032\000\000\000\000\000\
\000\000\014\000\014\000\000\000\011\000\000\000\000\000\007\000\
\034\000\030\000"

let yydgoto = "\002\000\
\003\000\004\000\104\000\105\000\032\000\106\000\034\000\100\000\
\093\000\101\000\000\000\038\000\041\000\107\000\075\000\076\000"

let yysindex = "\009\000\
\000\000\000\000\000\000\001\000\106\000\106\000\106\000\000\000\
\106\000\106\000\106\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\106\000\106\000\000\000\
\000\000\018\255\000\000\000\000\000\000\000\000\000\000\000\000\
\220\254\175\001\000\000\000\000\000\000\089\000\255\001\066\002\
\229\254\022\002\235\001\243\254\106\000\106\000\021\255\106\000\
\106\000\106\000\106\000\106\000\106\000\106\000\106\000\106\000\
\106\000\106\000\106\000\106\000\106\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\106\000\000\000\000\000\000\000\
\066\002\066\002\254\254\255\254\106\000\001\255\139\001\082\002\
\152\001\152\001\152\001\152\001\152\001\152\001\136\000\136\000\
\251\254\251\254\251\254\000\000\079\255\195\001\123\255\000\000\
\106\000\215\001\009\255\019\255\020\255\106\000\000\000\000\000\
\000\000\012\255\045\255\106\000\000\000\066\002\000\000\000\000\
\000\000\001\255\044\002\045\000\068\255\000\000\044\255\167\255\
\023\255\000\000\000\000\049\255\000\000\079\255\211\255\000\000\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\028\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\028\255\000\000\
\000\000\161\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\242\254\
\000\000\000\000\000\000\000\000\000\000\033\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\240\254\235\254\000\000\034\255\000\000\037\255\142\255\228\255\
\040\001\062\001\072\001\085\001\117\001\130\001\251\000\017\001\
\183\000\206\000\228\000\000\000\059\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\040\255\000\000\000\000\000\000\
\000\000\000\000\000\000\058\255\000\000\236\254\000\000\000\000\
\000\000\000\000\000\000\063\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\059\255\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\084\000\002\000\000\000\252\255\254\255\000\000\
\213\255\000\000\000\000\000\000\235\255\219\255\000\000\000\000"

let yytablesize = 871
let yytable = "\033\000\
\024\000\044\000\035\000\036\000\037\000\031\000\039\000\040\000\
\042\000\001\000\063\000\061\000\067\000\062\000\063\000\064\000\
\047\000\069\000\045\000\043\000\040\000\077\000\070\000\071\000\
\070\000\071\000\095\000\063\000\063\000\063\000\067\000\072\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\067\000\
\019\000\096\000\073\000\074\000\097\000\079\000\080\000\081\000\
\082\000\083\000\084\000\085\000\086\000\087\000\088\000\089\000\
\090\000\091\000\092\000\116\000\046\000\112\000\113\000\078\000\
\117\000\114\000\094\000\118\000\077\000\120\000\123\000\128\000\
\066\000\099\000\098\000\125\000\068\000\069\000\126\000\127\000\
\008\000\033\000\005\000\009\000\066\000\035\000\119\000\030\000\
\129\000\000\000\000\000\006\000\000\000\000\000\110\000\000\000\
\007\000\000\000\000\000\115\000\008\000\000\000\009\000\102\000\
\103\000\040\000\010\000\011\000\000\000\121\000\012\000\013\000\
\014\000\015\000\016\000\017\000\018\000\000\000\019\000\020\000\
\021\000\022\000\000\000\000\000\000\000\000\000\005\000\023\000\
\000\000\000\000\025\000\026\000\027\000\028\000\029\000\006\000\
\000\000\000\000\000\000\000\000\007\000\000\000\000\000\050\000\
\008\000\109\000\009\000\000\000\000\000\000\000\010\000\011\000\
\000\000\000\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\000\000\019\000\020\000\021\000\022\000\000\000\000\000\
\050\000\000\000\005\000\023\000\000\000\000\000\025\000\026\000\
\027\000\028\000\029\000\006\000\000\000\000\000\000\000\000\000\
\007\000\050\000\050\000\050\000\008\000\000\000\009\000\000\000\
\000\000\000\000\010\000\011\000\000\000\000\000\012\000\013\000\
\014\000\015\000\016\000\017\000\018\000\000\000\019\000\020\000\
\021\000\022\000\000\000\000\000\000\000\124\000\005\000\023\000\
\000\000\000\000\025\000\026\000\027\000\028\000\029\000\006\000\
\000\000\000\000\000\000\000\000\007\000\049\000\049\000\000\000\
\008\000\130\000\009\000\000\000\000\000\000\000\010\000\011\000\
\000\000\000\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\000\000\019\000\020\000\021\000\022\000\049\000\000\000\
\000\000\000\000\000\000\023\000\005\000\000\000\025\000\026\000\
\027\000\028\000\029\000\000\000\000\000\006\000\000\000\049\000\
\049\000\049\000\007\000\000\000\000\000\000\000\008\000\000\000\
\009\000\000\000\000\000\000\000\010\000\011\000\000\000\000\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\000\000\
\019\000\020\000\021\000\022\000\000\000\000\000\000\000\000\000\
\005\000\023\000\000\000\000\000\025\000\026\000\027\000\028\000\
\029\000\006\000\000\000\000\000\000\000\000\000\007\000\000\000\
\000\000\000\000\008\000\000\000\009\000\000\000\000\000\000\000\
\010\000\011\000\000\000\000\000\012\000\013\000\014\000\015\000\
\016\000\017\000\018\000\000\000\019\000\020\000\021\000\022\000\
\000\000\000\000\000\000\000\000\005\000\023\000\000\000\000\000\
\025\000\026\000\027\000\028\000\029\000\006\000\000\000\000\000\
\000\000\000\000\007\000\000\000\000\000\005\000\008\000\066\000\
\009\000\000\000\000\000\000\000\010\000\011\000\006\000\000\000\
\000\000\000\000\000\000\007\000\000\000\000\000\000\000\000\000\
\000\000\020\000\021\000\022\000\000\000\000\000\000\000\000\000\
\000\000\023\000\000\000\000\000\025\000\026\000\027\000\028\000\
\029\000\000\000\020\000\021\000\022\000\058\000\059\000\060\000\
\061\000\000\000\062\000\063\000\064\000\025\000\026\000\027\000\
\028\000\029\000\038\000\038\000\000\000\000\000\038\000\038\000\
\038\000\038\000\038\000\038\000\038\000\038\000\038\000\038\000\
\038\000\038\000\000\000\038\000\038\000\038\000\000\000\000\000\
\045\000\045\000\000\000\038\000\045\000\045\000\045\000\045\000\
\045\000\045\000\045\000\045\000\045\000\045\000\045\000\000\000\
\000\000\000\000\000\000\000\000\038\000\038\000\038\000\046\000\
\046\000\045\000\000\000\046\000\046\000\046\000\046\000\046\000\
\046\000\046\000\046\000\046\000\046\000\046\000\000\000\000\000\
\000\000\000\000\045\000\045\000\045\000\047\000\047\000\000\000\
\046\000\047\000\047\000\047\000\047\000\047\000\047\000\047\000\
\047\000\047\000\047\000\047\000\000\000\000\000\000\000\000\000\
\000\000\046\000\046\000\046\000\043\000\043\000\047\000\000\000\
\043\000\043\000\043\000\043\000\043\000\043\000\043\000\043\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\047\000\
\047\000\047\000\044\000\044\000\000\000\043\000\044\000\044\000\
\044\000\044\000\044\000\044\000\044\000\044\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\043\000\043\000\
\043\000\053\000\053\000\044\000\000\000\053\000\053\000\053\000\
\053\000\053\000\053\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\044\000\044\000\044\000\054\000\
\054\000\000\000\053\000\054\000\054\000\054\000\054\000\054\000\
\054\000\051\000\051\000\000\000\000\000\051\000\051\000\051\000\
\051\000\051\000\051\000\053\000\053\000\053\000\052\000\052\000\
\054\000\000\000\052\000\052\000\052\000\052\000\052\000\052\000\
\000\000\000\000\051\000\000\000\000\000\000\000\000\000\000\000\
\000\000\054\000\054\000\054\000\000\000\000\000\000\000\052\000\
\000\000\000\000\000\000\051\000\051\000\051\000\056\000\056\000\
\000\000\000\000\056\000\056\000\056\000\056\000\056\000\056\000\
\052\000\052\000\052\000\055\000\055\000\000\000\000\000\055\000\
\055\000\055\000\055\000\055\000\055\000\049\000\000\000\056\000\
\050\000\051\000\052\000\053\000\054\000\055\000\056\000\057\000\
\058\000\059\000\060\000\061\000\055\000\062\000\063\000\064\000\
\056\000\056\000\056\000\056\000\057\000\058\000\059\000\060\000\
\061\000\000\000\062\000\063\000\064\000\055\000\055\000\055\000\
\048\000\049\000\000\000\000\000\050\000\051\000\052\000\053\000\
\054\000\055\000\056\000\057\000\058\000\059\000\060\000\061\000\
\000\000\062\000\063\000\064\000\048\000\049\000\000\000\000\000\
\050\000\051\000\052\000\053\000\054\000\055\000\056\000\057\000\
\058\000\059\000\060\000\061\000\000\000\062\000\063\000\064\000\
\048\000\049\000\000\000\065\000\050\000\051\000\052\000\053\000\
\054\000\055\000\056\000\057\000\058\000\059\000\060\000\061\000\
\000\000\062\000\063\000\064\000\048\000\049\000\000\000\108\000\
\050\000\051\000\052\000\053\000\054\000\055\000\056\000\057\000\
\058\000\059\000\060\000\061\000\000\000\062\000\063\000\064\000\
\048\000\049\000\000\000\111\000\050\000\051\000\052\000\053\000\
\054\000\055\000\056\000\057\000\058\000\059\000\060\000\061\000\
\000\000\062\000\063\000\064\000\000\000\000\000\071\000\048\000\
\049\000\068\000\000\000\050\000\051\000\052\000\053\000\054\000\
\055\000\056\000\057\000\058\000\059\000\060\000\061\000\000\000\
\062\000\063\000\064\000\000\000\000\000\048\000\049\000\000\000\
\070\000\050\000\051\000\052\000\053\000\054\000\055\000\056\000\
\057\000\058\000\059\000\060\000\061\000\000\000\062\000\063\000\
\064\000\000\000\000\000\048\000\049\000\000\000\122\000\050\000\
\051\000\052\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\061\000\000\000\062\000\063\000\064\000\050\000\
\051\000\052\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\061\000\000\000\062\000\063\000\064\000"

let yycheck = "\004\000\
\000\000\023\000\005\000\006\000\007\000\004\000\009\000\010\000\
\011\000\001\000\027\001\017\001\027\001\019\001\020\001\021\001\
\053\001\045\001\001\001\022\000\023\000\001\001\044\001\044\001\
\046\001\046\001\070\000\044\001\045\001\046\001\045\001\045\001\
\032\001\033\001\034\001\035\001\036\001\037\001\038\001\038\000\
\040\001\044\001\045\000\046\000\046\001\048\000\049\000\050\000\
\051\000\052\000\053\000\054\000\055\000\056\000\057\000\058\000\
\059\000\060\000\061\000\103\000\043\001\053\001\044\001\043\001\
\053\001\046\001\069\000\023\001\001\001\113\000\027\001\023\001\
\045\001\078\000\077\000\053\001\044\001\044\001\122\000\123\000\
\044\001\023\001\004\001\044\001\027\001\023\001\108\000\004\000\
\126\000\255\255\255\255\013\001\255\255\255\255\097\000\255\255\
\018\001\255\255\255\255\102\000\022\001\255\255\024\001\025\001\
\026\001\108\000\028\001\029\001\255\255\114\000\032\001\033\001\
\034\001\035\001\036\001\037\001\038\001\255\255\040\001\041\001\
\042\001\043\001\255\255\255\255\255\255\255\255\004\001\049\001\
\255\255\255\255\052\001\053\001\054\001\055\001\056\001\013\001\
\255\255\255\255\255\255\255\255\018\001\255\255\255\255\002\001\
\022\001\023\001\024\001\255\255\255\255\255\255\028\001\029\001\
\255\255\255\255\032\001\033\001\034\001\035\001\036\001\037\001\
\038\001\255\255\040\001\041\001\042\001\043\001\255\255\255\255\
\027\001\255\255\004\001\049\001\255\255\255\255\052\001\053\001\
\054\001\055\001\056\001\013\001\255\255\255\255\255\255\255\255\
\018\001\044\001\045\001\046\001\022\001\255\255\024\001\255\255\
\255\255\255\255\028\001\029\001\255\255\255\255\032\001\033\001\
\034\001\035\001\036\001\037\001\038\001\255\255\040\001\041\001\
\042\001\043\001\255\255\255\255\255\255\047\001\004\001\049\001\
\255\255\255\255\052\001\053\001\054\001\055\001\056\001\013\001\
\255\255\255\255\255\255\255\255\018\001\002\001\003\001\255\255\
\022\001\023\001\024\001\255\255\255\255\255\255\028\001\029\001\
\255\255\255\255\032\001\033\001\034\001\035\001\036\001\037\001\
\038\001\255\255\040\001\041\001\042\001\043\001\027\001\255\255\
\255\255\255\255\255\255\049\001\004\001\255\255\052\001\053\001\
\054\001\055\001\056\001\255\255\255\255\013\001\255\255\044\001\
\045\001\046\001\018\001\255\255\255\255\255\255\022\001\255\255\
\024\001\255\255\255\255\255\255\028\001\029\001\255\255\255\255\
\032\001\033\001\034\001\035\001\036\001\037\001\038\001\255\255\
\040\001\041\001\042\001\043\001\255\255\255\255\255\255\255\255\
\004\001\049\001\255\255\255\255\052\001\053\001\054\001\055\001\
\056\001\013\001\255\255\255\255\255\255\255\255\018\001\255\255\
\255\255\255\255\022\001\255\255\024\001\255\255\255\255\255\255\
\028\001\029\001\255\255\255\255\032\001\033\001\034\001\035\001\
\036\001\037\001\038\001\255\255\040\001\041\001\042\001\043\001\
\255\255\255\255\255\255\255\255\004\001\049\001\255\255\255\255\
\052\001\053\001\054\001\055\001\056\001\013\001\255\255\255\255\
\255\255\255\255\018\001\255\255\255\255\004\001\022\001\023\001\
\024\001\255\255\255\255\255\255\028\001\029\001\013\001\255\255\
\255\255\255\255\255\255\018\001\255\255\255\255\255\255\255\255\
\255\255\041\001\042\001\043\001\255\255\255\255\255\255\255\255\
\255\255\049\001\255\255\255\255\052\001\053\001\054\001\055\001\
\056\001\255\255\041\001\042\001\043\001\014\001\015\001\016\001\
\017\001\255\255\019\001\020\001\021\001\052\001\053\001\054\001\
\055\001\056\001\002\001\003\001\255\255\255\255\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\255\255\019\001\020\001\021\001\255\255\255\255\
\002\001\003\001\255\255\027\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\255\255\
\255\255\255\255\255\255\255\255\044\001\045\001\046\001\002\001\
\003\001\027\001\255\255\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\255\255\255\255\
\255\255\255\255\044\001\045\001\046\001\002\001\003\001\255\255\
\027\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\014\001\015\001\016\001\255\255\255\255\255\255\255\255\
\255\255\044\001\045\001\046\001\002\001\003\001\027\001\255\255\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\044\001\
\045\001\046\001\002\001\003\001\255\255\027\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\044\001\045\001\
\046\001\002\001\003\001\027\001\255\255\006\001\007\001\008\001\
\009\001\010\001\011\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\044\001\045\001\046\001\002\001\
\003\001\255\255\027\001\006\001\007\001\008\001\009\001\010\001\
\011\001\002\001\003\001\255\255\255\255\006\001\007\001\008\001\
\009\001\010\001\011\001\044\001\045\001\046\001\002\001\003\001\
\027\001\255\255\006\001\007\001\008\001\009\001\010\001\011\001\
\255\255\255\255\027\001\255\255\255\255\255\255\255\255\255\255\
\255\255\044\001\045\001\046\001\255\255\255\255\255\255\027\001\
\255\255\255\255\255\255\044\001\045\001\046\001\002\001\003\001\
\255\255\255\255\006\001\007\001\008\001\009\001\010\001\011\001\
\044\001\045\001\046\001\002\001\003\001\255\255\255\255\006\001\
\007\001\008\001\009\001\010\001\011\001\003\001\255\255\027\001\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\014\001\015\001\016\001\017\001\027\001\019\001\020\001\021\001\
\044\001\045\001\046\001\012\001\013\001\014\001\015\001\016\001\
\017\001\255\255\019\001\020\001\021\001\044\001\045\001\046\001\
\002\001\003\001\255\255\255\255\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\255\255\019\001\020\001\021\001\002\001\003\001\255\255\255\255\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\014\001\015\001\016\001\017\001\255\255\019\001\020\001\021\001\
\002\001\003\001\255\255\045\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\255\255\019\001\020\001\021\001\002\001\003\001\255\255\045\001\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\014\001\015\001\016\001\017\001\255\255\019\001\020\001\021\001\
\002\001\003\001\255\255\045\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\255\255\019\001\020\001\021\001\255\255\255\255\044\001\002\001\
\003\001\027\001\255\255\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\016\001\017\001\255\255\
\019\001\020\001\021\001\255\255\255\255\002\001\003\001\255\255\
\027\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\014\001\015\001\016\001\017\001\255\255\019\001\020\001\
\021\001\255\255\255\255\002\001\003\001\255\255\027\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\255\255\019\001\020\001\021\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\255\255\019\001\020\001\021\001"

let yynames_const = "\
  ASSIGN\000\
  OR\000\
  AND\000\
  NOT\000\
  NEG\000\
  LT\000\
  LEQ\000\
  EQ\000\
  NEQ\000\
  GEQ\000\
  GT\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  MODULO\000\
  EXPONENTIAL\000\
  COMPLEMENT\000\
  TRANSCRIBE\000\
  TRANSLATE\000\
  TRANSLATETWO\000\
  BEGIN\000\
  END\000\
  IF\000\
  ELSEIF\000\
  ELSE\000\
  THEN\000\
  FOR\000\
  WHILE\000\
  CONTINUE\000\
  BREAK\000\
  NUC\000\
  INT\000\
  DOUBLE\000\
  AA\000\
  BOOL\000\
  CHAR\000\
  VOID\000\
  CODON\000\
  SEQUENCE\000\
  TRUE\000\
  FALSE\000\
  LPAREN\000\
  RPAREN\000\
  SEMI\000\
  COMMA\000\
  COLON\000\
  INCLUDE\000\
  RETURN\000\
  EOF\000\
  LOCAL\000\
  VARIABLE\000\
  "

let yynames_block = "\
  INT_LIT\000\
  ID\000\
  SEQUENCE_LIT\000\
  CHAR_LIT\000\
  DOUBLE_LIT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 45 "parser.mly"
                   (_1)
# 509 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "parser.mly"
        ({variables = []; stmts = []; funcs = [];})
# 515 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 48 "parser.mly"
                  ({ variables = _2 :: _1.variables; stmts = _1.stmts; funcs = _1.funcs;})
# 523 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 49 "parser.mly"
                 ({ variables = _1.variables; stmts = _2 :: _1.stmts; funcs = _1.funcs; })
# 531 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'func_decl) in
    Obj.repr(
# 50 "parser.mly"
                      ({ variables = _1.variables; stmts = _1.stmts; funcs = _2 :: _1.funcs; })
# 539 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 53 "parser.mly"
                            ( _1, _2, _4 )
# 548 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 7 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 6 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : 'formals_opt) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'block) in
    Obj.repr(
# 57 "parser.mly"
    ({ typ = _1; fname = _2; formals = _4; variables = _6.variables; stmts = _6.stmts})
# 558 "parser.ml"
               : 'func_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
                  ([])
# 564 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 61 "parser.mly"
                    ( List.rev _1 )
# 571 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 64 "parser.mly"
            ([(_1, _2)])
# 579 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 65 "parser.mly"
                              ( (_3, _4) :: _1 )
# 588 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
                    ([])
# 594 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 69 "parser.mly"
                        ( _2 :: _1 )
# 602 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parser.mly"
    ({variables = []; stmts = []; funcs = []})
# 608 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 73 "parser.mly"
                    ({ variables = _2 :: _1.variables; stmts = _1.stmts; funcs = []; })
# 616 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 74 "parser.mly"
                   ({ variables = _1.variables; stmts = _2 :: _1.stmts; funcs = []; })
# 624 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    Obj.repr(
# 77 "parser.mly"
          (Int)
# 630 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "parser.mly"
                (Bool)
# 636 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 79 "parser.mly"
                (Void)
# 642 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
                (Char)
# 648 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "parser.mly"
                (Double)
# 654 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "parser.mly"
                (Aa)
# 660 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "parser.mly"
                (Nuc)
# 666 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 84 "parser.mly"
               (Seq)
# 672 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "parser.mly"
                    ([])
# 678 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 88 "parser.mly"
                    ( _2 :: _1 )
# 686 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 91 "parser.mly"
                    ( Expr _1 )
# 693 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr_opt) in
    Obj.repr(
# 92 "parser.mly"
                                (Return _2 )
# 700 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 93 "parser.mly"
                            (Block(List.rev _2))
# 707 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 7 : 'expr_opt) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 3 : 'expr_opt) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    Obj.repr(
# 94 "parser.mly"
                                                            ( For(_2, _4, _6, _8.stmts, _8.variables) )
# 717 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    Obj.repr(
# 95 "parser.mly"
                                   ( While(_2, _4.stmts, _4.variables) )
# 725 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'block) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'bstmt) in
    Obj.repr(
# 96 "parser.mly"
                                    ( If(_2, _4.stmts, _4.variables, _5) )
# 734 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "parser.mly"
                        (Nobranching)
# 740 "parser.ml"
               : 'bstmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'bstmt) in
    Obj.repr(
# 100 "parser.mly"
                                     ( Elseif(_2, _4.stmts, _4.variables, _5) )
# 749 "parser.ml"
               : 'bstmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 101 "parser.mly"
                     ( Else(_2.stmts, _2.variables))
# 756 "parser.ml"
               : 'bstmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 104 "parser.mly"
                ( Litbool(true) )
# 762 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 105 "parser.mly"
                ( Litbool(false) )
# 768 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 106 "parser.mly"
                ( Id(_1) )
# 775 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 107 "parser.mly"
                (Litint(_1))
# 782 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 108 "parser.mly"
                    ( Litchar(_1) )
# 789 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 109 "parser.mly"
                    ( Litdouble(_1) )
# 796 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 110 "parser.mly"
                    ( Sequence(_1) )
# 803 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                      (Binop(_1,Add,_3))
# 811 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                      (Binop(_1,Sub,_3))
# 819 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                      (Binop(_1,Mult,_3))
# 827 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                      (Binop(_1,Div,_3))
# 835 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                      (Binop(_1,Mod,_3))
# 843 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                            (Binop(_1,Exp,_3))
# 851 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 117 "parser.mly"
                    (Binop(_1,And,_3))
# 859 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                  (Binop(_1,Or,_3))
# 867 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 119 "parser.mly"
                    (Binop(_1,Equal,_3))
# 875 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 120 "parser.mly"
                    (Binop(_1,Neq,_3))
# 883 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 121 "parser.mly"
                   (Binop(_1,Less,_3))
# 891 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 122 "parser.mly"
                   (Binop(_1,Leq,_3))
# 899 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 123 "parser.mly"
                   (Binop(_1,Greater,_3))
# 907 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 124 "parser.mly"
                   (Binop(_1,Geq,_3))
# 915 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 125 "parser.mly"
                             (Lunop(Neg, _2))
# 922 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 126 "parser.mly"
                 (Lunop(Not, _2))
# 929 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 127 "parser.mly"
                      (Lunop(Comp, _2))
# 936 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 128 "parser.mly"
                        (Runop(_1, Transcb))
# 943 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 129 "parser.mly"
                        (Runop(_1, Translt))
# 950 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 130 "parser.mly"
                            (Runop(_1, Translttwo))
# 957 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 131 "parser.mly"
                        (Assign(_1, _3))
# 965 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 132 "parser.mly"
                            (_2)
# 972 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 133 "parser.mly"
                                        (Call(_1, _3))
# 980 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 136 "parser.mly"
                        (Noexpr)
# 986 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 137 "parser.mly"
                ( _1 )
# 993 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    Obj.repr(
# 140 "parser.mly"
                      ( [] )
# 999 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 141 "parser.mly"
                     ( List.rev _1 )
# 1006 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 144 "parser.mly"
             ( [_1] )
# 1013 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 145 "parser.mly"
                                ( _3 :: _1 )
# 1021 "parser.ml"
               : 'actuals_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
