//
//  CarouselTableViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "CarouselTableViewCell.h"

@interface CarouselTableViewCell ()

@property (nonatomic, strong) UIStackView *containerStackView;
@property (nonatomic, strong) UIStackView *labelStackView;

@end

@implementation CarouselTableViewCell

- (void)setSptCellSize:(CGSize)sptCellSize {
    _sptCellSize = sptCellSize;
    [[self.itemCollectionView.heightAnchor constraintEqualToConstant:sptCellSize.height + 30] setActive:YES];
    [self.itemCollectionView updateConstraints];
}

- (void)setContainerStackView:(UIStackView *)containerStackView {
    _containerStackView = containerStackView;
    [self.containerStackView setAlignment:UIStackViewAlignmentLeading];
    [self.containerStackView setAxis:UILayoutConstraintAxisVertical];
    [self.containerStackView setSpacing:15.0];
}

- (void)setLabelStackView:(UIStackView *)labelStackView {
    _labelStackView = labelStackView;
    [self.labelStackView setAlignment:UIStackViewAlignmentCenter];
    [self.labelStackView setAxis:UILayoutConstraintAxisHorizontal];
    [self.labelStackView setSpacing:15.0];
}

- (void)setSectionLabel:(UILabel *)sectionLabel {
    _sectionLabel = sectionLabel;
    [self.sectionLabel setFont:[UIFont systemFontOfSize:20 weight:UIFontWeightBold]];
    [self.sectionLabel setText:@"Top Tracks"];
}

- (void)setItemCollectionView:(CarouselCollectionView *)itemCollectionView {
    _itemCollectionView = itemCollectionView;
    [self.itemCollectionView setTranslatesAutoresizingMaskIntoConstraints:NO];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        [self setupLayout];
    }
    
    return self;
}

- (void) setupLayout {
    
    [self setBackgroundColor:UIColor.clearColor];
    
    // section label stack view
    self.labelStackView = [[UIStackView alloc] init];
    [self.labelStackView addArrangedSubview:UIView.new];
    [self.labelStackView addArrangedSubview:self.sectionLabel];
    
    // container stack view
    self.itemCollectionView = [[CarouselCollectionView alloc] initWithFrame:self.frame collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    [self.itemCollectionView setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.containerStackView = [[UIStackView alloc] init];
    [self.containerStackView addArrangedSubview:self.labelStackView];
    [self.containerStackView addArrangedSubview:self.itemCollectionView];
    
    [self.itemCollectionView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [[self.itemCollectionView.leadingAnchor constraintEqualToAnchor:self.containerStackView.leadingAnchor] setActive:YES];
    [[self.itemCollectionView.trailingAnchor constraintEqualToAnchor:self.containerStackView.trailingAnchor] setActive:YES];
    
    // add to view
    [self addSubview:self.containerStackView];
    
    [self.containerStackView setTranslatesAutoresizingMaskIntoConstraints:NO];

    [[self.containerStackView.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];
    [[self.containerStackView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
    [[self.containerStackView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[self.containerStackView.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
