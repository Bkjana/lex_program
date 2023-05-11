%{
#include<stdio.h>
%}

%%
[\n\t ]	;

-?(([0-9]+)|([0-9]*\.[0-9]+)([eE][-+]?[0-9]+)?) { printf("%s number\n",yytext); }

.	ECHO;
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter the string: ");
    yylex();
    return 1;
}