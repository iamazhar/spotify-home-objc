//
//  MediaItemView.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+BrandColors.h"
#import "UIView+Extensions.h"

NS_ASSUME_NONNULL_BEGIN

@interface MediaItemView : UIView

typedef enum mediaItem{
    carousel,
    grid
} MediaItemType;

@property (nonatomic, weak) UIImageView *artworkImageView;
@property (nonatomic, weak) UILabel *itemLabel;

@end

NS_ASSUME_NONNULL_END
