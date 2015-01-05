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
    
    self.photo1.name=@"Photo 1";
    self.photo1.filename=@"filename1";
    self.photo1.description=@"omg this is photo1";
    self.photo2.name=@"Photo 2";
    self.photo2.filename=@"filename2";
    self.photo2.description=@"omg this is photo2";
    self.photo3.name=@"Photo 3";
    self.photo3.filename=@"filename3";
    self.photo3.description=@"omg this is photo3";
    self.photo4.name=@"Photo 4";
    self.photo4.filename=@"filename4";
    self.photo4.description=@"omg this is photo4";
    
    photos = [NSArray initWithObjects: photo1, photo2, photo3, photo4, nil];
    
    
    
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
    return self.pictureNames.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.pictureNames[indexPath.row];
    
    return cell;
}

@end
