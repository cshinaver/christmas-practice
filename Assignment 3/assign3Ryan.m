#import <Foundation/Foundation.h>

void printStringInReverse(NSString*);
void printSameIndex(NSArray*);
void findSameSuffix(NSArray*);
void searchStringForString(NSString*, NSString*);
void justTheJenkins(NSString*);
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
    
    // part two
    NSString *joe1 = @"middleSchoolJoe.mp4";
    NSString *joe2 = @"babyjoe.mp4";
    NSString *joe3 = @"babyjoe.mp4";
    NSArray *joeArray = @[joe1,joe2,joe3];
	printSameIndex(joeArray);
	findSameSuffix(joeArray);

	// part three
	NSString *Fancy = @"Fancy";
	NSString *Feast = @"Feast";
	NSString *FF = [Fancy stringByAppendingString:Feast];
	NSLog(@"%@",FF);

	// part four
	NSString *string = @"He was number one";
	NSString *number = @"number ";
	searchStringForString(string,number);

	// part five
	NSString *LJ =@"Leroy Jenkins";
	justTheJenkins(LJ);

	// part six
	NSMutableString *Happy = [NSMutableString string];
	[Happy appendString:@" Feet"];
	NSLog(@"%@",Happy);

	// part seven
	NSString *old = @"WeWeWeWeWeWeWeWe";
	NSString *new = [old uppercaseString];
	NSLog(@"%@",new);	
}

void printStringInReverse(NSString *string)
{
	for(int i = string.length-1; i >= 0; i--)
	{
		printf("%C",[string characterAtIndex:i]);
	}
	printf("\n");
}
void printSameIndex(NSArray* array)
{
	for(int i = 0; i < array.count; i++)
	{
		for (int j = i+1; j < array.count; j++)
		{
			if ([array[i] isEqualToString: array[j]])
			{
				NSLog(@"The string %@ at index %i is the same as the string %@ at index %i",array[i],i,array[j],j);
			}
		}
	}
}
void findSameSuffix(NSArray* array)
{
	for(int i = 0; i < array.count; i++)
	{
		for (int j = i+1; j < array.count; j++)
		{
			NSRange searchResult = [array[i] rangeOfString:@"."];
			NSString *suffix = [array[i] substringFromIndex:searchResult.location];
			if ([array[j] hasSuffix: suffix])
			{
				NSLog(@"The string %@ and the string %@ have the suffix %@",array[i],array[j],suffix);
			}
		}
	}
	
}

void searchStringForString(NSString* string, NSString* search)
{
	NSRange searchResult = [string rangeOfString:search];

	NSLog(@"%@ is located at %lu",search,searchResult.location);

	NSString *beginning = [string substringToIndex:searchResult.location];
	NSString *end = [string substringFromIndex:searchResult.location+searchResult.length];
	NSString *new = [beginning stringByAppendingString: end];

	NSLog(@"%@",new);
}

void justTheJenkins(NSString *LJ)
{
	NSRange searchResult = [LJ rangeOfString:@"J"];
	
	NSString *Jenkins = [LJ substringFromIndex:searchResult.location];

	NSLog(@"%@",Jenkins);
}
