%{
#include<stdio.h>
int c=0;
%}
%%
[A-Z] {printf("upper case\n"); c++;}
. {printf("not a upper case\n ");}
\n {return 0;}
%%

int yywrap(){
	return 1;
}

int main(){
yylex();
printf("total number of upper case alphbet %d",c);
}
