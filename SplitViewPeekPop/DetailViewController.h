//
//  DetailViewController.h
//  SplitViewPeekPop
//
//  Created by Hendrik Holtmann on 20/11/15.
//  Copyright © 2015 touchbyte GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UICollectionViewController
    @property (nonatomic, strong) NSArray *objects;
    @property (strong, nonatomic) id detailItem;
@end

