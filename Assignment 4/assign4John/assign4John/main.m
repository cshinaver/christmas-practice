//
//  main.m
//  assign4John
//
//  Created by John Rocha on 1/5/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompSciStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CompSciStudent *ryan = [[CompSciStudent alloc] init];
        CompSciStudent *charles = [[CompSciStudent alloc] init];
        ryan.favoredTextEditor = @"NANO";
        ryan.age = 16;
        ryan.googleFuLevel = 3;
        ryan.sexinessLevel = 10;
        charles.favoredTextEditor = @"VIM";
        charles.age = 21;
        charles.googleFuLevel = 10;
        charles.sexinessLevel = 69;
        
        NSString *theGreatest;
        theGreatest = [ryan compareStudents:charles];
        NSLog(@"LET IT BE PROCLAIMED THAT %@ IS THE GREATEST TEXT EDITOR OF ALL TIME",theGreatest);
    }
    return 0;
}
