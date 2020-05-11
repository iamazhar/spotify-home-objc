//
//  MediaItemView.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "MediaItemView.h"

@interface MediaItemView()

@property (nonatomic, strong) UIView *containerBgView;
@property (nonatomic, strong) UIStackView *containerStackView;

@end

@implementation MediaItemView

- (void)setContainerBgView:(UIView *)containerBgView {
    containerBgView = _containerBgView;
    [containerBgView setBackgroundColor:[UIColor colorWithRed:(42.0)/255 green:(40.0)/255 blue:(40.0)/255 alpha:(1.0)]];
    [containerBgView.layer setCornerRadius:3.0];
    [containerBgView setClipsToBounds:YES];
}

- (void)setContainerStackView:(UIStackView *)containerStackView {
    containerStackView = _containerStackView;
}

- (void)setArtworkImageView:(UIImageView *)artworkImageView {
    artworkImageView  =_artworkImageView;
    [artworkImageView setContentMode:UIViewContentModeScaleAspectFill];
    [artworkImageView setClipsToBounds:YES];
}

- (void)setItemLabel:(UILabel *)itemLabel {
    itemLabel = _itemLabel;
    [itemLabel setNumberOfLines:0];
    [itemLabel setText:@"After Hours"];
    UIFont *font = [UIFont systemFontOfSize:11];
    [itemLabel setFont:font];
    [itemLabel setTextColor:UIColor.whiteColor];
}

- (id)initWithFrame:(CGRect)frame mediaItemType:(MediaItemType)mediaItemType {
    self = [super initWithFrame:frame];
    if (self) {
        self.containerStackView = [[UIStackView alloc] init];
        [self.containerStackView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.artworkImageView = [[UIImageView alloc] init];
        [self.artworkImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.itemLabel = [[UILabel alloc] init];
        [self.itemLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        [self setupLayoutWithType:mediaItemType];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //
    }
    return self;
}

- (void)setupLayoutWithType:(MediaItemType)mediaItemType {
    
    UIEdgeInsets paddingZero = UIEdgeInsetsZero;
    UIEdgeInsets padding = UIEdgeInsetsMake(0, 0, 0, 5);
    CGSize size = CGSizeMake(55, 55);
    
    switch (mediaItemType) {
        case carousel:
            // stack view props setup
            
            [self.containerStackView setSpacing:8.0];
            [self.containerStackView setAxis:UILayoutConstraintAxisVertical];
            [self.containerStackView setAlignment:UIStackViewAlignmentLeading];
            
            // add views
            
            [self.containerStackView addArrangedSubview:self.artworkImageView];
            [self.containerStackView addArrangedSubview:self.itemLabel];
            [self addSubview:self.containerStackView];
            
            [self.containerStackView fillSuperview:&paddingZero];
            break;
            
        case grid:
            // stack view props setup
            [self.containerStackView setSpacing:8.0];
            [self.containerStackView setAxis:UILayoutConstraintAxisHorizontal];
            [self.containerStackView setAlignment:UIStackViewAlignmentCenter];
            
            // add views
            [self.containerStackView addArrangedSubview:self.artworkImageView];
            
            [self.artworkImageView anchorTop:nil leading:nil bottom:nil trailing:nil padding:&paddingZero size:&size];
            
            [self.containerStackView addArrangedSubview:self.itemLabel];
            
            [self.containerBgView addSubview:self.containerStackView];
            [self.containerStackView fillSuperview:&paddingZero];
            
            
            
            [self addSubview:self.containerBgView];
            [self.containerBgView anchorTop:self.topAnchor leading:self.leadingAnchor bottom:self.bottomAnchor trailing:self.trailingAnchor padding:&padding size:&size];
            
        default:
            break;
    }
}

@end
