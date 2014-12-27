//
//  ViewController.m
//  assign5Charles
//
//  Created by Charles Shinaver on 12/27/14.
//  Copyright (c) 2014 Charles Shinaver. All rights reserved.
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

- (IBAction)sayRunBessie:(id)sender {
    self.bessieLabel.text = @"Run Bessie, Run free";
}

@end
