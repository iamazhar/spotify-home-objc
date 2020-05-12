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
        self.containerBgView = UIStackView.new;
        [self.containerBgView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.containerStackView = UIStackView.new;
        [self.containerStackView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.artworkImageView = UIImageView.new;
        [self.artworkImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.itemLabel = UILabel.new;
        [self.itemLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        [self setupLayoutWithType:mediaItemType];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.containerBgView = UIStackView.new;
        [self.containerBgView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.containerStackView = UIStackView.new;
        [self.containerStackView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.artworkImageView = UIImageView.new;
        [self.artworkImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        self.itemLabel = UILabel.new;
        [self.itemLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
    }
    return self;
}

- (void)setupLayoutWithType:(MediaItemType)mediaItemType {
    
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
            
            [[self.containerStackView.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
            [[self.containerStackView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
            [[self.containerStackView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
            [[self.containerStackView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
            
            break;
            
        case grid:
            // stack view props setup
            [self.containerStackView setSpacing:8.0];
            [self.containerStackView setAxis:UILayoutConstraintAxisHorizontal];
            [self.containerStackView setAlignment:UIStackViewAlignmentCenter];
            
            // add views
            [self.containerStackView addArrangedSubview:self.artworkImageView];
            
            [[self.artworkImageView.widthAnchor constraintEqualToConstant:55] setActive:YES];
            [[self.artworkImageView.heightAnchor constraintEqualToConstant:55] setActive:YES];
            
            [self.containerStackView addArrangedSubview:self.itemLabel];
            
            [self.containerBgView addSubview:self.containerStackView];
            
            [[self.containerStackView.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
            [[self.containerStackView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
            [[self.containerStackView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
            [[self.containerStackView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
            
            [self addSubview:self.containerBgView];
            
            [[self.containerBgView.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
            [[self.containerBgView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
            [[self.containerBgView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
            [[self.containerBgView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-5] setActive:YES];
            [[self.containerBgView.heightAnchor constraintEqualToConstant:55] setActive:YES];
            [[self.containerBgView.widthAnchor constraintEqualToConstant:55] setActive:YES];
            
        default:
            break;
    }
}

@end
