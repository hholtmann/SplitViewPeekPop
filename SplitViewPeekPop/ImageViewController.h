//
//  ImageViewController.h
//  SplitViewPeekPop
//
//  Created by Hendrik Holtmann on 20/11/15.
//  Copyright © 2015 touchbyte GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController
@property (nonatomic, strong) UIImage *image;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end
