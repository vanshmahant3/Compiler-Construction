/*
 * Name: Vansh Mahant
 * PRN: 24070521038
 * Semester: 5th Sem
 * Section: A
 * Practical 9: Postfix expression evaluator using Lex and Yacc
 */

%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[ \t]       { }
\n          { return '\n'; }
[+\-*/]     { return yytext[0]; }
.           { return yytext[0]; }
%%

int yywrap() {
    return 1;
}
