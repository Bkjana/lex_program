%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}

%%
[a-zA-Z][0-9a-zA-Z]* {id++;}
[+|-|*|/|=] {op++;}
"(" {v++;}
")" {v--;}
.|\n {ECHO;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter The Expression:\n");
    yylex();
    if((op+1)==id && v==0 && flag==0){
        printf("The Given Expressions Is Valid.");
    }
    else{
        printf("The Given Expression Is Not Valid.");
    }
    return 0;
}