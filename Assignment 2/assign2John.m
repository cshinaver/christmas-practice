#import <Foundation/Foundation.h>

int main() {
    NSString *theString = @"This is not a C-string.";
    NSNumber *randomNumber = [NSNumber numberWithLong:2692281677];
    int caresGiven = 0;

    NSArray *myArray = @[theString, randomNumber, @(caresGiven)];
    NSString *arrayString = [myArray componentsJoinedByString:@" "];
    
    printf("\n%s\n", [arrayString UTF8String]);
    
} 
