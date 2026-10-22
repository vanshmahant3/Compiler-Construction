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

int yylex();
void yyerror(const char *s);
%}

%token NUMBER

%%
stmt:
      expr '\n'       { printf("Result: %d\n", $1); }
    | '\n'
    | error '\n'      { yyerrok; }
    ;

expr:
      NUMBER          { $$ = $1; }
    | expr expr '+'   { $$ = $1 + $2; }
    | expr expr '-'   { $$ = $1 - $2; }
    | expr expr '*'   { $$ = $1 * $2; }
    | expr expr '/'   { 
                        if ($2 == 0) {
                            yyerror("Division by zero!");
                            $$ = 0;
                        } else {
                            $$ = $1 / $2;
                        }
                      }
    ;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    printf("Enter a postfix expression (e.g., 5 3 + or 10 2 /):\n");
    yyparse();
    return 0;
}

/*
Vansh Mahant
24070521038
5th Sem A
*/
