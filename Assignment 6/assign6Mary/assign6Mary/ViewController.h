//
//  ViewController.h
//  assign6Mary
//
//  Created by Mary Connolly on 1/1/15.
//  Copyright (c) 2015 Mary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *names;

@end
