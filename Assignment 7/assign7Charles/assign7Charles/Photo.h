//
//  Photo.h
//  assign7Charles
//
//  Created by Charles Shinaver on 1/5/15.
//  Copyright (c) 2015 Charles Shinaver. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property NSString *name;
@property NSString *filename;
@property NSString *imageDescription;
- (Photo *)initWithName:(NSString *)name andFilename:(NSString *)filename andImageDescription:(NSString *)imageDescription;

@end
