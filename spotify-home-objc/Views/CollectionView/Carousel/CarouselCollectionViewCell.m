//
//  CarouselCollectionViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "CarouselCollectionViewCell.h"
#import <SDWebImage/SDWebImage.h>

@implementation CarouselCollectionViewCell

- (void)setImagePath:(NSString *)imagePath {
    self.imagePath = _imagePath;
    [self.mediaItem.artworkImageView sd_setImageWithURL:[NSURL URLWithString:imagePath]];
}

- (void)setItemTitle:(NSString *)itemTitle {
    self.itemTitle = _itemTitle;
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

- (void)prepareForReuse {
    [super prepareForReuse];
    [self layoutIfNeeded];
}

- (void) setupLayout {
    [self.contentView setBackgroundColor:UIColor.clearColor];
    [self addSubview:self.mediaItem];
    
    UIEdgeInsets paddingZero = UIEdgeInsetsZero;
    CGSize sizeZero = CGSizeZero;
    
    [self.mediaItem anchorTop:self.topAnchor leading:self.leadingAnchor bottom:self.bottomAnchor trailing:self.trailingAnchor padding:&paddingZero size:&sizeZero];
}

@end
