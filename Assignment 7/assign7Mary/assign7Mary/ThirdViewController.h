//
//  ThirdViewController.h
//  assign7Mary
//
//  Created by Mary Connolly on 1/4/15.
//  Copyright (c) 2015 Mary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface ThirdViewController : UIViewController

@property Photo *photo;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UILabel *photoDescription;
- (IBAction)goBack:(id)sender;

@end
