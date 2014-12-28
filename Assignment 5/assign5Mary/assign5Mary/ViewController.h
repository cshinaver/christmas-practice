//
//  ViewController.h
//  assign5Mary
//
//  Created by Mary Connolly on 12/28/14.
//  Copyright (c) 2014 Mary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSString *textToDisplay1;
@property NSString *textToDisplay2;

@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
- (IBAction)changeLabel:(id)sender;

@end
