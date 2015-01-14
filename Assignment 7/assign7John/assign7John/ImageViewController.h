//
//  ImageViewController.h
//  assign7John
//
//  Created by John Rocha on 1/12/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JoePhoto.h"

@interface ImageViewController : UIViewController

@property JoePhoto *photo;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
