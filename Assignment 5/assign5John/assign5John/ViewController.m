//
//  ViewController.m
//  assign5John
//
//  Created by John Rocha on 1/5/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sayThanks:(id)sender {
    self.centerLabel.text = @"Thank you, friend.";
}
@end
