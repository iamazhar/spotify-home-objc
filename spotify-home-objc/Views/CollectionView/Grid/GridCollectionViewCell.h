//
//  GridCollectionViewCell.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaItemView.h"

NS_ASSUME_NONNULL_BEGIN

@interface GridCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) NSString *imagePath;
@property (nonatomic, strong) NSString *itemTitle;
@property (nonatomic, strong) MediaItemView *mediaItem;

@end

NS_ASSUME_NONNULL_END
