//
//  ViewController.h
//  assign7Mary
//
//  Created by Mary Connolly on 1/4/15.
//  Copyright (c) 2015 Mary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface ViewController : UIViewController <UITabBarDelegate, UITableViewDataSource>

@property Photo *photo1;
@property Photo *photo2;
@property Photo *photo3;
@property Photo *photo4;

@property NSArray *photos;


@end

