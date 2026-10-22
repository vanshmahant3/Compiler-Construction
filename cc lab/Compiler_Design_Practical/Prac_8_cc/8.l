/*
 * Name: Vansh Mahant
 * PRN: 24070521038
 * Semester: 5th Sem
 * Section: A
 * Practical 8: Postfix expression evaluation using stack in Lex
 */

%{
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int stack[100];
int top = -1;

void push(int x)
{
    stack[++top] = x;
}

int pop()
{
    return stack[top--];
}
%}

%%
[0-9]+ {
    push(atoi(yytext));
}

[+\-*/] {
    int a, b;

    b = pop();
    a = pop();

    switch(yytext[0])
    {
        case '+': push(a + b); break;
        case '-': push(a - b); break;
        case '*': push(a * b); break;
        case '/': push(a / b); break;
    }
}

[ \t\n]+ ;
. ;
%%

int main()
{
    yyin = fopen("input.txt", "r");

    if (yyin == NULL)
    {
        printf("Cannot open input.txt\n");
        return 1;
    }

    yylex();

    printf("Result = %d\n", stack[top]);

    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}

/*
Vansh Mahant
24070521038
5th Sem A
*/
