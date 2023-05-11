%{
#include<stdio.h>
int lc=0,sc=0,wc=0,cc=0;
%}

%%
[\n] {lc++; cc+=yyleng;}
[ \t] {sc++; cc+=yyleng;}
[^\t\n ]+ {wc++; cc+=yyleng;}
%%

int main(){
    printf("Enter the input: \n");
    yylex();
    printf("\nWords: %d\nCharacter: %d\nLines: %d\nSpaces: %d",wc,cc,lc,sc);
}

int yywrap(){
    return 1;
}