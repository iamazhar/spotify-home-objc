//
//  GridTableViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "GridTableViewCell.h"

@interface GridTableViewCell ()
@property (nonatomic, weak) UIStackView *containerStackView;
@end

@implementation GridTableViewCell

- (void)setContainerStackView:(UIStackView *)containerStackView
{
    _containerStackView = containerStackView;
    [self.containerStackView setTranslatesAutoresizingMaskIntoConstraints: NO];
    [self.containerStackView setAlignment:UIStackViewAlignmentLeading];
    [self.containerStackView setAxis:UILayoutConstraintAxisVertical];
    [self.containerStackView setSpacing:15.0];
}

- (void)setSectionLabel:(UILabel *)sectionLabel
{
    _sectionLabel = sectionLabel;
    [self.sectionLabel setTranslatesAutoresizingMaskIntoConstraints: NO];
    [self.sectionLabel setFont:[UIFont systemFontOfSize:20 weight:UIFontWeightBold]];
    [self.sectionLabel setText:@"Good Evening"];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupLayout];
    }
    return self;
}

- (void) setupLayout {
    [self setBackgroundColor:UIColor.clearColor];
    
    [self.gridCollectionView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.containerStackView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.containerStackView addArrangedSubview:self.sectionLabel];
    [self.containerStackView addArrangedSubview:self.gridCollectionView];
    
    [[self.gridCollectionView.leadingAnchor constraintEqualToAnchor:self.containerStackView.leadingAnchor] setActive:YES];;
    [[self.gridCollectionView.trailingAnchor constraintEqualToAnchor:self.containerStackView.trailingAnchor] setActive:YES];;
    [[self.gridCollectionView.heightAnchor constraintEqualToConstant:184] setActive:YES];
    
    [self addSubview:self.containerStackView];
    [[self.containerStackView.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    [[self.containerStackView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:15] setActive:YES];
    [[self.containerStackView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    [[self.containerStackView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-15] setActive:YES];
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
