//
//  CompSciStudent.h
//  assign4Charles
//
//  Created by Charles Shinaver on 12/27/14.
//  Copyright (c) 2014 Charles Shinaver. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompSciStudent : NSObject

@property NSString *favoriteTextEditor;
@property int age;
@property int sexinessLevel;
@property int googleFuLvel;

- (NSString *) determineGreatestTextEditor:(CompSciStudent *)otherStudent;

@end
