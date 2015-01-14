//
//  ImageViewController.m
//  assign7John
//
//  Created by John Rocha on 1/12/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import "ImageViewController.h"
#import "NoteViewController.h"
#import "JoePhoto.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView.image = [UIImage imageNamed:self.photo.filename];
    self.title = self.photo.name;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NoteViewController *controller = (NoteViewController *)segue.destinationViewController;
    controller.photo = self.photo;
}


@end
