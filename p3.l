%{
#include<stdio.h>
%}
%%
[a-zA-Z_$][0-9]* { printf("valid identifier %s\n",yytext);}
. { printf("invlaid");}
%%
int yywrap(){
	return 1;
}

int main(){
yylex();
return 0;
} 
