/*
 * Name: Vansh Mahant
 * PRN: 24070521038
 * Semester: 5th Sem
 * Section: A
 * Practical 4: Yacc specification for validating arithmetic expressions
 */

%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
int yyerror(char *s);
%}

%token NUM ID

%%
E: E '+' T | E '-' T | T ;
T: T '*' F | T '/' F | F ;
F: '(' E ')' | NUM | ID ;
%%

int yyerror(char *s)
{
    printf("INVALID EXPRESSION!!!\n");
    exit(0);
}

int main()
{
    printf("Enter an Expression:\n");
    yyparse();
    printf("Valid Expression\n");
    return 0;
}

/*
Vansh Mahant
24070521038
5th Sem A
*/
