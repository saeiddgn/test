#include<iostream>
int main()
{
	char before='a';
	//left side of the desired byte:
	char temp=0;
	//reverse right side of the byte
	for (int i=4;i>-1;i--)
	{
		temp[i]=before[i-4];
	}
	before&=0b11100000;
	before|=temp;

	std::cout<<before<<std::endl;
	printf("Final is : %b",before);
}
