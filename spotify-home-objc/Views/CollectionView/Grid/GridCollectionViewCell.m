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
    [self.mediaItem setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [[self.mediaItem.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    [[self.mediaItem.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.mediaItem.topAnchor constraintEqualToAnchor:self.topAnchor],
        [self.mediaItem.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
        [self.mediaItem.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [self.mediaItem.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
    ]];

}

@end
