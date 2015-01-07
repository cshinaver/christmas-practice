//
//  SecondViewController.h
//  assign7Mary
//
//  Created by Mary Connolly on 1/4/15.
//  Copyright (c) 2015 Mary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "ThirdViewController.h"

@interface SecondViewController : UIViewController

@property Photo *photo;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *barButton;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end
