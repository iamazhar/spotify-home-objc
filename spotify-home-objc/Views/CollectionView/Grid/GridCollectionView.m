//
//  GridCollectionView.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "GridCollectionView.h"

@interface GridCollectionView ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@end

@implementation GridCollectionView

- (void)setTracks:(Track *)tracks {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self reloadData];
    });
}

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout {
    self = [super initWithFrame:frame collectionViewLayout:layout];
    
    if (self) {
        [self setShowsVerticalScrollIndicator:NO];
        [self setDelegate:self];
        [self setDataSource:self];
        
        [self registerClass:GridCollectionViewCell.self forCellWithReuseIdentifier:@"grid-cell"];
        
        [self setupLayout];
    }
    return self;
}

-(void) setupLayout {
    [self setBackgroundColor:UIColor.clearColor];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    [layout setSectionInset:UIEdgeInsetsMake(0, 0, 0, 0)];
    [layout setMinimumLineSpacing:8.0];
    [layout setMinimumInteritemSpacing:2.0];
    [self setCollectionViewLayout:layout];
    [self reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.tracks.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GridCollectionViewCell *cell = [self dequeueReusableCellWithReuseIdentifier:@"grid-cell" forIndexPath:indexPath];
    cell.imagePath = self.tracks[indexPath.item].images[1].url;
    cell.itemTitle = self.tracks[indexPath.item].name;
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(190, 55);
}

@end
