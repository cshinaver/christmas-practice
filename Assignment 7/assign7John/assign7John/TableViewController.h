//
//  TableViewController.h
//  assign7John
//
//  Created by John Rocha on 1/12/15.
//  Copyright (c) 2015 John Rocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property NSArray *photos;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

