%{
#include<stdio.h>
int flag=0;    
%}

%%
and|or|but|because|if|then|nevertheless {flag=1;}
. ;
%%

int main(){
    printf("Enter The Sentence:\n");
    yylex();
    if(flag){
        printf("Compound Sentence");
    }
    else{
        printf("Simple Sentence");
    }
}
int yywrap(){
    return 1;
}