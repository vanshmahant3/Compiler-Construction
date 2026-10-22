/*
 * Name: Vansh Mahant
 * PRN: 24070521038
 * Semester: 5th Sem
 * Section: A
 * Practical 10: Three Address Code (TAC) generation using Lex and Yacc
 */

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int temp = 1;

char *newtemp()
{
    char *s = malloc(20);
    sprintf(s, "t%d", temp++);
    return s;
}

int yylex(void);
void yyerror(const char *s);
%}

%union {
    char *str;
}

%token <str> ID NUM
%type <str> expr

%left '+' '-'
%left '*' '/'

%%

input:
    expr '\n' { printf("\nResult = %s\n", $1); }
    ;

expr:
    expr '+' expr
    {
        $$ = newtemp();
        printf("%s = %s + %s\n", $$, $1, $3);
    }
    | expr '-' expr
    {
        $$ = newtemp();
        printf("%s = %s - %s\n", $$, $1, $3);
    }
    | expr '*' expr
    {
        $$ = newtemp();
        printf("%s = %s * %s\n", $$, $1, $3);
    }
    | expr '/' expr
    {
        $$ = newtemp();
        printf("%s = %s / %s\n", $$, $1, $3);
    }
    | '(' expr ')' { $$ = $2; }
    | ID { $$ = $1; }
    | NUM { $$ = $1; }
    ;

%%

void yyerror(const char *s)
{
    printf("Invalid expression\n");
}

int main()
{
    printf("Enter an arithmetic expression (e.g., a+b*c): ");
    yyparse();
    return 0;
}

/*
Vansh Mahant
24070521038
5th Sem A
*/
