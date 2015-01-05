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
    
    photo1.name=@"Photo 1";
    photo1.filename=@"filename1";
    photo1.label=@"omg this is photo1";
    photo2.name=@"Photo 2";
    photo2.filename=@"filename2";
    photo2.label=@"omg this is photo2";
    photo3.name=@"Photo 3";
    photo3.filename=@"filename3";
    photo3.label=@"omg this is photo3";
    photo4.name=@"Photo 4";
    photo4.filename=@"filename4";
    photo4.label=@"omg this is photo4";
    
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

@end
