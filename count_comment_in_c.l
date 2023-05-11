%{
#include<stdio.h>   
int sc=0,mc=0;
%}

%%
"/*"[A-Za-z0-9 \t\n]*"*/" {mc++;}
"//"[a-zA-Z0-9 \t]*"\n" {sc++;}
%%

int main(int argc, char* argv[]){
    if(argc==2){
        yyin=fopen(argv[1],"r");
    }
    else{
        printf("Enter the input:\n");
        yyin=stdin;
    }
    yylex();
    printf("\nNumber of singlelines comment lines are %d\nAnd Number of multilines comment lines are %d",sc,mc);
}

int yywrap(){
    return 1;
}