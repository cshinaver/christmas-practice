//
//  CompSciStudent.m
//  assign4Charles
//
//  Created by Charles Shinaver on 12/27/14.
//  Copyright (c) 2014 Charles Shinaver. All rights reserved.
//

#import "CompSciStudent.h"

@implementation CompSciStudent

- (NSString *) determineGreatestTextEditor:(CompSciStudent *)otherStudent
{
    if (self.sexinessLevel == otherStudent.sexinessLevel)
    {
        return @"Tie";
    }
    
    return (self.sexinessLevel > otherStudent.sexinessLevel) ? self.favoriteTextEditor : otherStudent.favoriteTextEditor;
}

@end