//
//  ViewController.m
//  assign6Charles
//
//  Created by Charles Shinaver on 12/29/14.
//  Copyright (c) 2014 Charles Shinaver. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.datNameArray = @[@"Jed I Knight", @"Bud Light", @"Jim MacDonald-Berger", @"Tahra Dactyl", @"Chris P. Bacon", @"James Rollo-Koster", @"Gowen Geter", @"Sue H. Yoo", @"Filet Minyon"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datNameArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.datNameArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.datNameArray = @[@"Well done, you broke the table.", @"Blame Mary", @"No one will know", @"This app will self destruct in 5 seconds"] ;
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(setTableViewBasedOnTimer:) userInfo:nil repeats:YES];
    [tableView reloadData];
    
}

-(void)setTableViewBasedOnTimer:(NSTimer *)theTimer
{
    int timeLocation = (int)(([self.datNameArray[3] rangeOfString:@"seconds"]).location) - 2;
    unichar time = [self.datNameArray[3] characterAtIndex:timeLocation];
    int timeNum = (int)time;
    if (timeNum != 48)
    {
        time -= 1;
        self.datNameArray = @[@"Well done, you broke the table.", @"Blame Mary", @"No one will know", [NSString stringWithFormat:@"This app will self destruct in %C seconds", time]];
        [self.mainTableView reloadData];
    }
    else
    {
        [theTimer invalidate];
        exit(0);
    }
    
}

@end
