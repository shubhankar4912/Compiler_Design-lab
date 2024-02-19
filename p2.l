%{
#include<stdio.h>
int c=0;
%}
%%
[A-Z] { c=1; return 0;}
[a-z] { c=1; return 0;}

\n {return 0;}
%%

int yywrap(){
	return 1;
}

int main(){
yylex();
if(c){
printf("invalid");
}
else{
printf("valid");
}
}
