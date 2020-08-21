/* Analizador sintactico */
%{
#include<stdio.h>
#include<stdlib.h>
extern int yylex(void);
void yyerror(char*s);
%}

%token NUM;
%token IGU;
%token MAS;

%%
suma:
	| NUM MAS NUM IGU NUM {printf("Sintaxis correcta\n");}
%%

void yyerror(char *s){
	printf("Error: %s\n",s);
}

int main (int argc, char **argv){
	yyparse();
return 0;
}
