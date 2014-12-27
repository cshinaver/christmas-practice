//
//  CompSciStudent.h
//  assignment4Ryan
//
//  Created by Ryan Busk on 12/27/14.
//  Copyright (c) 2014 Ryan Busk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompSciStudent : NSObject

@property NSString *favoriteTextEditor;
@property int age;
@property double sexinessLevel;
@property double googleFu;

-(NSString*)whosSexier:(CompSciStudent*)person;

@end
