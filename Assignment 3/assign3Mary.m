#import <Foundation/Foundation.h>

void reverseString(NSString *);
void enumerateArray(NSArray *);
void suffix(NSArray *);

int main(int argc, const char *argv[])
{
	@autoreleasepool {

		//Part 1

		NSString *str1 = @"miv";
		NSString *str2 = @"reverof";
		NSString *str3 = @"si";
		NSString *str4 = @"efil";

		reverseString(str1);
		reverseString(str2);
		reverseString(str3);
		reverseString(str4);

		//Part 2

		NSArray *joearray = [NSArray arrayWithObjects: @"middleSchoolJoe.mp4", @"babyjoe.mp4", @"babyjoe.mp4", nil];
		enumerateArray(joearray);
		suffix(joearray);
		
		//Part 3

		NSString *str5 = @"Fancy";
		NSString *str6 = @"Feast";
		NSMutableString *str7 = [NSMutableString stringWithString: str5];

		[str7 appendString: str6];

		printf("%s\n\n", [str7 UTF8String]);

		//Part 4

		NSString *omgstring = @"He was number one";
		NSRange range = [omgstring rangeOfString: @"number"];
		printf("Location of 'number': %lu\n", range.location);
		NSMutableString *omgstring2 = [NSMutableString stringWithString: omgstring];
		[omgstring2 deleteCharactersInRange: range];
		printf("New string: %s\n\n", [omgstring2 UTF8String]);

		//Part 5

		NSString *leeroy = @"LEEEEEROYYYYYYYY JENKINSSSSSSS";
		NSRange range2 = [leeroy rangeOfString: @"J"];
		range2.length=range2.location;
		range2.location=0;
		NSString *leeroy2 = [leeroy stringByReplacingCharactersInRange: range2 withString: @""];
		printf("New string: %s\n\n", [leeroy2 UTF8String]);

		//Part 6

		NSString *happystring = @"Happy";
		NSMutableString *happystring2 = [NSMutableString stringWithString: happystring];
		NSString *feetstring = @"Feet";

		[happystring2 appendString: feetstring];

		printf("%s\n\n", [happystring2 UTF8String]);

		//Part 7

		NSString *part7str = @"lEeEtHaXxOoRrZz";

		NSString *part7str2 = [part7str uppercaseString];

		printf("%s\n\n", [part7str2 UTF8String]);
		

	return 0;

	}
}

void suffix(NSArray *array)
{
	printf("Indexes with suffix .mp4: ");
	for (int i=0; i<[array count]; i++)
	{
		if ([[array objectAtIndex: i] hasSuffix: @".mp4"])
		{
			printf("%i ", i);
		}
	}
	printf("\n\n");
}

void enumerateArray(NSArray *array)
{
	printf("Repeated phrases:\n");
	for (int i=0; i<[array count]-1; i++)
	{
		for (int j=i+1; j<[array count]; j++)
		{
			if ([[array objectAtIndex: i] isEqualToString: [array objectAtIndex: j]])
			{
				printf("%s\nIndexes: %i, %i\n", [[array objectAtIndex: i] UTF8String], i, j);
			}
		}
	}
	printf("\n");
}

void reverseString(NSString *str)
{
	for (int i=[str length]-1; i>=0; i--)
	{
		printf("%c", (char) [str characterAtIndex: i]);
	}
	printf("\n");
}
