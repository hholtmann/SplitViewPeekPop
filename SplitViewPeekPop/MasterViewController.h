//
//  MasterViewController.h
//  SplitViewPeekPop
//
//  Created by Hendrik Holtmann on 20/11/15.
//  Copyright © 2015 touchbyte GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

