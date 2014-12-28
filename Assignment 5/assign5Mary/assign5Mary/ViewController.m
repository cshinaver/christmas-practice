//
//  ViewController.m
//  assign5Mary
//
//  Created by Mary Connolly on 12/28/14.
//  Copyright (c) 2014 Mary. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textToDisplay1 = @"Ryan is a badass";
    self.textToDisplay2 = @"Lol no he's not";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeLabel:(id)sender {
    
    if ([self.mainLabel.text isEqualToString: @"Label"])
    {
        self.mainLabel.text = self.textToDisplay1;
    }
        
    else if ([self.mainLabel.text isEqualToString: self.textToDisplay2])
    {
        self.mainLabel.text = self.textToDisplay1;
    }
        
    else
    {
        self.mainLabel.text = self.textToDisplay2;
    }
}
@end
