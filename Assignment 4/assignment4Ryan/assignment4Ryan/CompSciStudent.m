//
//  CompSciStudent.m
//  assignment4Ryan
//
//  Created by Ryan Busk on 12/27/14.
//  Copyright (c) 2014 Ryan Busk. All rights reserved.
//

#import "CompSciStudent.h"

@implementation CompSciStudent

- (NSString*) whosSexier:(CompSciStudent *)person
{
    if (self.sexinessLevel > person.sexinessLevel)
    {
        return self.favoriteTextEditor;
    }
    else if(person.sexinessLevel > self.sexinessLevel)
    {
        return self.favoriteTextEditor;
    }
    else
    {
        return @"Tie";
    }
}

@end
