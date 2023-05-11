%{
#include<stdio.h>    
int v=0;
int c=0;
%}

%%
[ \n\t]+ ;
[aAeEiIoOuU] {v++;}
. {c++;} //[a-zA-Z] {c++;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter the string:\n");
    yylex();
    printf("Number Of Vowels: %d\nNumber Of Consonants: %d\n", v, c);
}