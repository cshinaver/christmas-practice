//
//  TableViewController.m
//  assign7John
//
//  Created by John Rocha on 1/12/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import "TableViewController.h"
#import "ImageViewController.h"
#import "JoePhoto.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    JoePhoto *frolicking = [[JoePhoto alloc] init];
    JoePhoto *halloween = [[JoePhoto alloc] init];
    JoePhoto *withCharles = [[JoePhoto alloc] init];
    JoePhoto *withRyan = [[JoePhoto alloc] init];
    frolicking.name = @"Frolicking Joe";
    halloween.name = @"Halloween Joe";
    withCharles.name = @"Joe with Charles";
    withRyan.name = @"Joe with Ryan";
    frolicking.filename = @"frolickingJoe";
    halloween.filename = @"halloweenJoe";
    withCharles.filename = @"joeAndCharles";
    withRyan.filename = @"joeAndRyan";
    frolicking.details = @"See the grace with which Joe frolicks. There is surely none like it.";
    halloween.details = @"Alas, this is indeed Joe. His clever disguise nearly fooled everyone.";
    withCharles.details = @"When manliness meets Moranliness...";
    withRyan.details = @"Ryan is not worthy, yet his Moranliness graces him with his presence.";
    
    self.photos = @[frolicking,halloween,withCharles,withRyan];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

// rows in section
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.photos.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    JoePhoto *currentPhoto = self.photos[indexPath.row];
    cell.textLabel.text = currentPhoto.name;
    
    return cell;
    
}



 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     ImageViewController *controller = (ImageViewController *)segue.destinationViewController;
     controller.photo = [self.photos objectAtIndex:self.tableView.indexPathForSelectedRow.row];
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     
 }



@end
