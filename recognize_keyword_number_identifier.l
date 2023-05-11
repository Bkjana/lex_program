/*Lex program to recognise keyword, number and idntifier.*/

%{
#include <stdio.h>
%}

%%
main|auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while {printf("\n%s is a Keyword.",yytext);}
-?(([0-9]+)|([0-9]*\.[0-9]+)([eE][-+]?[0-9]+)?) {printf("\n%s is a Number.",yytext);}
[a-zA-Z][a-zA-Z0-9_]* {printf("\n%s is an Identifier or number.",yytext);}
\'[a-zA-Z]\' {printf("\n%s is a character.",yytext);}
\".*\" {printf("\n%s is a string",yytext);}
[~@!$#^*%&()[\]{}<>+=_–|\/\\;:‘“,.\?] {printf("\n%s is a special character and operators.",yytext);}
[0-9]+[a-zA-Z]+ {printf("\n%s is an wrong Identifier or Number.",yytext);}
#include[ \t]*[<"][^">]+[">] { printf("\nFound #include directive: %s", yytext); }
#define.* { printf("\nFound #define directive: %s", yytext); }
"/*".*"*/" {printf("\nMultiline command %s",yytext);}
"//".* {printf("\nSingleline command %s",yytext);}
\n|\t {ECHO;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter the text:\n");
    yylex();
    return 0;
}
