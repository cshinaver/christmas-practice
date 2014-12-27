#import <Foundation/Foundation.h>

int main()
{
	NSString *buttMunch = @"Mary";
	NSNumber *number = @5;

	int num = 6;

	NSArray *arr = @[buttMunch, @(num), number];

	NSString *string = [arr componentsJoinedByString:@" "];

	NSLog(@"%@",string);

	return 0;
}
