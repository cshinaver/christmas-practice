//
//  ViewController.m
//  assign7Mary
//
//  Created by Mary Connolly on 1/4/15.
//  Copyright (c) 2015 Mary. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Photo *photo1 = [[Photo alloc] init];
    Photo *photo2 = [[Photo alloc] init];
    Photo *photo3 = [[Photo alloc] init];
    Photo *photo4 = [[Photo alloc] init];
    
    photo1.name=@"Ariel";
    photo1.filename=@"ariel3";
    photo1.label=@"Look, Ariel is a walrus";
    photo2.name=@"Charles";
    photo2.filename=@"charles2";
    photo2.label=@"Charles is sexy AF";
    photo3.name=@"John";
    photo3.filename=@"john2";
    photo3.label=@"Runway ready";
    photo4.name=@"Ryan";
    photo4.filename=@"ryan3";
    photo4.label=@"no description needed";
    
    self.photos = [[NSArray alloc] initWithObjects: photo1, photo2, photo3, photo4, nil];
    
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
    return self.photos.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell" forIndexPath:indexPath];
    
    Photo *currentPhoto = self.photos[indexPath.row];
    
    cell.textLabel.text = currentPhoto.name;
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
        SecondViewController *controller = [segue destinationViewController];
        
        controller.photo = [self.photos objectAtIndex: self.tableView.indexPathForSelectedRow.row];
}

@end
