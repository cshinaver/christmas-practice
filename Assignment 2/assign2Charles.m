// assign2Charles.m
// Maintainer: Charles Shinaver 

#import <Foundation/Foundation.h>

int main()
{
    NSString *dogName = @"Alfalfa's level of sexiness is";
    NSNumber *sexinessBaseline = [NSNumber numberWithInt:9000];
    int increment = 1;
    NSArray *myArray = @[dogName, sexinessBaseline, @"+", @(increment)];
    NSString *arrayStr = [myArray componentsJoinedByString:@" "];

    printf("%s\n", [arrayStr UTF8String]);
}




