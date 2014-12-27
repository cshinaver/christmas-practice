//
//  main.m
//  assignment4Ryan
//
//  Created by Ryan Busk on 12/27/14.
//  Copyright (c) 2014 Ryan Busk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompSciStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CompSciStudent *John = [[CompSciStudent alloc] init];
        John.age = 19;
        John.favoriteTextEditor = @"vim";
        John.sexinessLevel = 5001;
        John.googleFu = 1;
        
        CompSciStudent *Mary = [[CompSciStudent alloc] init];
        Mary.age = 0;
        Mary.favoriteTextEditor = @"Google Docs";
        Mary.sexinessLevel = 0;
        Mary.googleFu = 0;
        
        NSString *textEditor = [John whosSexier: Mary];
        
        NSLog(@"%@",textEditor);
        
    }
    return 0;
}
