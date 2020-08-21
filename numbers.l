%{
#include<stdio.h>
%}

%%
[\t\n]                   ;
[0-9]+\.[0-9]+           {printf("Es un Flotante: %s\n", yytext);}
[0-9]+                   {printf("Es un Entero: %s\n", yytext);}
[a-zA-Z0-9]+             {printf("Es una Cadena: %s\n", yytext);}
.                        {printf("Es un Error lexico: %s\n", yytext);}
%%

void main(){
    yylex();
}