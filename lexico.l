/* Analizador lexico */
%{
#include<stdio.h>
#include<stdlib.h>
#include "sin.tab.h"
%}

DIGIT		[0-9]

%%
[ \t\n]			;
{DIGIT}+(\.{DIGIT}+)?	{return(NUM);}
"="			{return(IGU);}
"+"			{return(MAS);}
.			{printf("Error lexico %s", yytext);}
%%
