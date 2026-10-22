/*
 * Name: Vansh Mahant
 * PRN: 24070521038
 * Semester: 5th Sem
 * Section: A
 * Practical 6: Lex program to convert Decimal numbers to Hexadecimal
 */

%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+ {
    int n = atoi(yytext);
    printf("Decimal: %d\nHexadecimal: %X\n\n", n, n);
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
