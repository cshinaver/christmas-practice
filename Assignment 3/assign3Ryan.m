#import <Foundation/Foundation.h>

void printStringInReverse(NSString*);

int main()
{
	// part one
	NSString *sOne = @"miv";
	NSString *sTwo = @"reverof";
	NSString *sThree = @"si";
	NSString *sFour = @"efil";

	printStringInReverse(sOne);
	printStringInReverse(sTwo);
	printStringInReverse(sThree);
	printStringInReverse(sFour);
}

void printStringInReverse(NSString *string)
{
	for(int i = string.length-1; i >= 0; i--)
	{
		printf("%C",[string characterAtIndex:i]);
	}
	printf("\n");
}
