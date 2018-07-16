#include<stdio.h>
#include"func.h"

int main(){
	int a=5, b=6;
	int _add = add(a, b);
	int _sub = sub(a, b);
	printf("%d + %d = %d\n", a, b, _add);	
	printf("%d - %d = %d\n", a, b, _sub);	
	return 0;
};
