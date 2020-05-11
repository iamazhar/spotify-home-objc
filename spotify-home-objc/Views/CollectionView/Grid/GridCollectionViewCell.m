//
//  GridCollectionViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "GridCollectionViewCell.h"
#import <SDWebImage/SDWebImage.h>

@implementation GridCollectionViewCell

- (void)setImagePath:(NSString *)imagePath {
    _mediaItem = self.mediaItem;
    [self.mediaItem.artworkImageView sd_setImageWithURL:[NSURL URLWithString:imagePath]];
}

- (void)setItemTitle:(NSString *)itemTitle {
    _itemTitle = itemTitle;
    self.mediaItem.itemLabel.text = itemTitle;
    [self.mediaItem.itemLabel sizeToFit];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupLayout];
    }
    return self;
}

- (void) setupLayout {
    [self addSubview:self.mediaItem];
    UIEdgeInsets insetsZero = UIEdgeInsetsZero;
    [self.mediaItem fillSuperview:&insetsZero];
}

@end
