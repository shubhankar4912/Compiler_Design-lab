%{
#include<stdio.h>
%}
%%
[a-zA-Z_$][a-zA-Z0-9_$]* { printf("valid identifier: %s\n", yytext); }
. { printf("invlaid %s", yytext);}
%%
int yywrap(){
	return 1;
}

int main(){
yylex();
return 0;
} 
