#import <Foundation/Foundation.h>

int main(int argv, const char *argc[])
{
	@autoreleasepool {

		NSString *str1 = @"On April", *str2 = @"th, I like to turn up with Fancy Feast. Meow bitchez hashtag"; 

		int number = 20;

		NSNumber *number2 = [NSNumber numberWithInteger: 420];

		NSArray *array = [NSArray arrayWithObjects: str1, [NSNumber numberWithInteger: number], str2, number2, nil];

		NSString *string = [array componentsJoinedByString:@" "];

		printf("%s\n", [string UTF8String]);
	}

}
