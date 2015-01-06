//
//  PhotosTableViewController.m
//  assign7Charles
//
//  Created by Charles Shinaver on 1/5/15.
//  Copyright (c) 2015 Charles Shinaver. All rights reserved.
//

#import "PhotosTableViewController.h"
#import "Photo.h"
#import "DetailViewController.h"

@interface PhotosTableViewController ()

@end

@implementation PhotosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Photo *photo1, *photo2, *photo3, *photo4;
    photo1 = [[Photo alloc] initWithName:@"Frolicking Joe" andFilename:@"frolickingJoe" andImageDescription:@"Ah Joe. Watch him frolick"];
    photo2 = [[Photo alloc] initWithName:@"Halloween Joe" andFilename:@"halloweenJoe" andImageDescription:@"Aww he so scary"];
    photo3 = [[Photo alloc] initWithName:@"Joe and Ryan" andFilename:@"joeAndRyan" andImageDescription:@"Such love"];
    photo4 = [[Photo alloc] initWithName:@"Joe and Charles" andFilename:@"joeAndCharles" andImageDescription:@"Such club"];
    
    self.photos = @[photo1, photo2, photo3, photo4];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.photos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Photo *currentPhoto = self.photos[indexPath.row];
    cell.textLabel.text = currentPhoto.name;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    DetailViewController *vc = [segue destinationViewController];
    vc.currentPhoto = [self.photos objectAtIndex:self.tableView.indexPathForSelectedRow.row];
}

@end
