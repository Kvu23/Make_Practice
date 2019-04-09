#include "main.h"

extern void foo(void);
extern void boo(void);

int main(void)
{
	printf("Hello from main\n\n");
	foo();
	boo();
	
	return 0;
}
