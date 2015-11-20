//
//  DetailViewController.m
//  SplitViewPeekPop
//
//  Created by Hendrik Holtmann on 20/11/15.
//  Copyright © 2015 touchbyte GmbH. All rights reserved.
//

#import "DetailViewController.h"
#import "ImageCollectionViewCell.h"
#import "ImageViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;        
        self.title = _detailItem;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(ImageCollectionViewCell*)sender
{
    if ([segue.identifier isEqualToString:@"showImage"]) {
        ImageViewController *viewController = [segue destinationViewController];
        viewController.image = sender.imageView.image;
    }
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _objects.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ImageCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"ImageCollectionViewCell" forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:_objects[indexPath.row]];
    return cell;
}

@end
