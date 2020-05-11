//
//  CarouselCollectionView.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "CarouselCollectionView.h"
#import "CarouselCollectionViewCell.h"

@interface CarouselCollectionView ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic) CGSize sptCellSize;

@end

@implementation CarouselCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout {
    self = [super initWithFrame:frame collectionViewLayout:layout];
    
    if (self) {
        [self setDataSource:self];
        [self setDelegate:self];
        
        [self registerClass:CarouselCollectionViewCell.self forCellWithReuseIdentifier:@"item-cell"];
        
        [self setupLayout];
    }
    return self;
}

- (void) setupLayout {
    [self setBackgroundColor:UIColor.clearColor];
    
    UICollectionViewFlowLayout *layout = UICollectionViewFlowLayout.new;
    [layout setSectionInset:UIEdgeInsetsMake(0, 15, 15, 15)];
    [layout setMinimumLineSpacing:8.0];
    [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [self setCollectionViewLayout:layout];
    [self setShowsHorizontalScrollIndicator:NO];
    [self reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (self.tracks.count == 0) {
        return self.artists.count;
    }
    return self.tracks.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CarouselCollectionViewCell *cell = [self dequeueReusableCellWithReuseIdentifier:@"item-cell" forIndexPath:indexPath];
    
    if (self.tracks.count == 0) {
        NSString *imagePath = self.artists[indexPath.item].images[1].url;
        cell.imagePath = imagePath;
        cell.cellSize = self.sptCellSize;
        cell.itemTitle = self.artists[indexPath.item].name;
        return cell;
    }
    
    NSString *imagePath = self.tracks[indexPath.item].images[1].url;
    cell.imagePath = imagePath;
    cell.cellSize = self.sptCellSize;
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return  self.sptCellSize;
}

@end
