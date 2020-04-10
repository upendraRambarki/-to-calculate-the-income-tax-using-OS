/*Question 4:
Write first program to print the table of a number. Write second program to print the Fibonacci series. Now, implement a strategy to run the second program into first program without writing the actual code of second program in first program.
*/
 //Program 1:
 #include<stdio.h>
#include<unistd.h>
int main()
{
	int n;
	printf("Enter which table you want:");
	scanf("%d",&n);
	for(int i = 1; i <= 10;i++)
	{
		printf("%d * %d = %d\n",n,i,n*i);
	}
	char *args[] = {"./Fibonacci",NULL};
	execv(args[0],args);
}

// Program 2:

int main()
{
	int n;
	printf("Enter the number of elements in series:");
	scanf("%d",&n);
	int a = 0,b = 1,c;


	printf("Fabinocci Series is:");
	for(int i = 1;i<=n;i++)
	{
		printf("%d ",a);
		c = a + b;
		a = b;
		b = c;
	}
	printf("\n");

}
