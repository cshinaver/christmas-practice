//
//  Photo.m
//  assign7Charles
//
//  Created by Charles Shinaver on 1/5/15.
//  Copyright (c) 2015 Charles Shinaver. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (Photo *)initWithName:(NSString *)name andFilename:(NSString *)filename andImageDescription:(NSString *)imageDescription
{
    self = [super init];
    
    if (self)
    {
        self.name = name;
        self.filename = filename;
        self.imageDescription = imageDescription;
    }
    
    return self;
}

@end
