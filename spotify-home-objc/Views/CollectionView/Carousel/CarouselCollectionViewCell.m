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
    _imagePath = imagePath;
    self.mediaItem = [[MediaItemView alloc] initWithFrame:self.frame mediaItemType:(MediaItemType)carousel];
    [self.mediaItem.artworkImageView sd_setImageWithURL:[NSURL URLWithString:imagePath]];
}

- (void)setItemTitle:(NSString *)itemTitle {
    _itemTitle = itemTitle;
    self.mediaItem = [[MediaItemView alloc] initWithFrame:self.frame mediaItemType:(MediaItemType)carousel];
    self.mediaItem.itemLabel.text = itemTitle;
    [self.mediaItem.itemLabel sizeToFit];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imagePath = [[NSString alloc] init];
        self.itemTitle = [[NSString alloc] init];
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
    
    [self.mediaItem setTranslatesAutoresizingMaskIntoConstraints:NO];
    [[self.mediaItem.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    [[self.mediaItem.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    [[self.mediaItem.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.mediaItem.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    
}

@end
