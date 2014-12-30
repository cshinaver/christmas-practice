//
//  ViewController.h
//  assign6Charles
//
//  Created by Charles Shinaver on 12/29/14.
//  Copyright (c) 2014 Charles Shinaver. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property NSArray *datNameArray;

@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
-(void)setTableViewBasedOnTimer:(NSTimer *)theTimer;

@end

