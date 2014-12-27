//
//  main.m
//  assign4Charles
//
//  Created by Charles Shinaver on 12/27/14.
//  Copyright (c) 2014 Charles Shinaver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompSciStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CompSciStudent *mary = [[CompSciStudent alloc] init];
        CompSciStudent *charles = [CompSciStudent new];
        
        mary.age = 1;
        mary.favoriteTextEditor = @"Microsoft Word";
        mary.sexinessLevel = -42;
        mary.googleFuLvel = 0;
        
        charles.age = 19;
        charles.favoriteTextEditor = @"vim";
        charles.googleFuLvel = 9000 + 1;
        charles.sexinessLevel = 9000 + 2;
        
        NSLog(@"Greatest Text editor: %@", [charles determineGreatestTextEditor:mary]);
    }
    return 0;
}
