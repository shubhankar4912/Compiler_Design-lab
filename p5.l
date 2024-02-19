%{
#include<stdio.h>
%}
%%
[0-9]* {printf("INTEGER\n");}[0-9][.][0-9]* {printf("float"); }


%%
int yywrap(){
	return 1;
}
int main(){
yylex();

}
