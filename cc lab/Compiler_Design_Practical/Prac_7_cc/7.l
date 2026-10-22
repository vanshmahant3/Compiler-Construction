/*
 * Name: Vansh Mahant
 * PRN: 24070521038
 * Semester: 5th Sem
 * Section: A
 * Practical 7: Lex program to recognize valid URLs ending with .com
 */

%{
#include <stdio.h>
%}

%%
.*\.com$   { printf("Valid: %s\n", yytext); }
.*com$     { printf("Valid: %s\n", yytext); }
.+         { printf("Invalid: %s\n", yytext); }
\n         ;
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
