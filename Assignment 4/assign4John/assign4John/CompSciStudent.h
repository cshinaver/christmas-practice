//
//  CompSciStudent.h
//  assign4John
//
//  Created by John Rocha on 1/5/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompSciStudent : NSObject

@property NSString *favoredTextEditor;
@property int age;
@property int sexinessLevel;
@property int googleFuLevel;

- (NSString *) compareStudents:(CompSciStudent *)other;

@end



