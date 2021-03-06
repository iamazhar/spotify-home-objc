//
//  CarouselTableViewCell.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarouselCollectionView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarouselTableViewCell : UITableViewCell

@property (nonatomic) CGSize sptCellSize;
@property (nonatomic, strong) UILabel *sectionLabel;
@property (nonatomic, strong) CarouselCollectionView *itemCollectionView;

@end

NS_ASSUME_NONNULL_END
