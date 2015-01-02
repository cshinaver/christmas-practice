//
//  ViewController.m
//  assign6Mary
//
//  Created by Mary Connolly on 1/1/15.
//  Copyright (c) 2015 Mary. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    _names = @[@"Ryan 'Badass' Busk", @"Joe 'The Protector of Virginity' Moran", @"Ariel 'Supes Cas Not Even Comp Sci' Navotas", @"Colleen 'The lesbian...(Ryan's a girl right?)' Finley", @"Mary 'ALL CAPS' Connolly", @"John 'I am very thick, mind you' Rocha", @"Charles 'Vim' Shinaver", @"Ramzi 'God' Bualuan", @"Tijana 'Dracula' Malenkovic"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{
    return self.names.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.names[indexPath.row];
    
    return cell;
}

@end
