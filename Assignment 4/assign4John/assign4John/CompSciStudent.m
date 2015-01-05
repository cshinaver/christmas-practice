//
//  CompSciStudent.m
//  assign4John
//
//  Created by John Rocha on 1/5/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompSciStudent.h"

@implementation CompSciStudent

- (NSString *) compareStudents:(CompSciStudent *)other
{
    if (self.sexinessLevel == other.sexinessLevel)
        return @"VIM (even though there was a tie)";
    else if (self.sexinessLevel > other.sexinessLevel)
        return self.favoredTextEditor;
    else
        return other.favoredTextEditor;
}


@end

