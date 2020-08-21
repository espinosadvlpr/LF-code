%{
#include<stdio.h>
#include<math.h>
%}

DIGIT 	[0-9]
ID 	[a-z][a-z0-9]*

%%
\/\*[a-z ]+\+\*\/	; /* Escapa los comentarios de una linea */
{DIGIT}+		{printf("Como cadena: %s\nComo entero: %d\n", yytext, atoi(yytext));}
{DIGIT}+\.{DIGIT}*	{printf("Como cadena: %s\nComo flotante: %g\n", yytext, atof(yytext));}
if|then|else|function	{printf("Palabra clave: %s\n", yytext);}
{ID}			{printf("Un identificador: %s\n", yytext);}
\+|\-\|\*|\/		{printf("Un operador aritmetico: %s\n", yytext);}
"<"|">"|">="|"<="|"=="	{printf("Un operador relacional %s\n", yytext);}
[ \t\n]+		; /* Escapa los espacios en blanco */
.			{printf("Es un error lexico: %s\n", yytext);}

%%
void main(){
	yylex();
}
