//
//  InfoViewController.h
//  assign7Charles
//
//  Created by Charles Shinaver on 1/5/15.
//  Copyright (c) 2015 Charles Shinaver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface InfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *imageDescriptionTextView;
@property Photo *currentPhoto;
- (IBAction)dismissView:(id)sender;

@end
