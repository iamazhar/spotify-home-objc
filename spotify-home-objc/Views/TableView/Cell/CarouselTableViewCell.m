//
//  CarouselTableViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "CarouselTableViewCell.h"
#import "UIView+Extensions.h"

@interface CarouselTableViewCell ()

@property (nonatomic, weak) UIStackView *containerStackView;
@property (nonatomic, weak) UIStackView *labelStackView;

@end

@implementation CarouselTableViewCell

- (void)setSptCellSize:(CGSize *)sptCellSize {
    self.sptCellSize = _sptCellSize;
    [[self.itemCollectionView.heightAnchor constraintEqualToConstant:self.sptCellSize->height + 30] setActive:YES];
    [self.itemCollectionView updateConstraints];
}

- (void)setContainerStackView:(UIStackView *)containerStackView {
    self.containerStackView = _containerStackView;
    [self.containerStackView setAlignment:UIStackViewAlignmentLeading];
    [self.containerStackView setAxis:UILayoutConstraintAxisVertical];
    [self.containerStackView setSpacing:15.0];
}

- (void)setLabelStackView:(UIStackView *)labelStackView {
    self.labelStackView = _labelStackView;
    [self.labelStackView setAlignment:UIStackViewAlignmentCenter];
    [self.labelStackView setAxis:UILayoutConstraintAxisHorizontal];
    [self.labelStackView setSpacing:15.0];
}

- (void)setSectionLabel:(UILabel *)sectionLabel {
    self.sectionLabel = _sectionLabel;
    [self.sectionLabel setFont:[UIFont systemFontOfSize:20 weight:UIFontWeightBold]];
    [self.sectionLabel setText:@"Top Tracks"];
}

- (void)setItemCollectionView:(CarouselCollectionView *)itemCollectionView {
    self.itemCollectionView = _itemCollectionView;
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
    
    UIEdgeInsets insetsZero = UIEdgeInsetsZero;
    CGSize sizeZero = CGSizeZero;
    
    [self setBackgroundColor:UIColor.clearColor];
    
    // section label stack view
    [self.labelStackView addArrangedSubview:UIView.new];
    [self.labelStackView addArrangedSubview:self.sectionLabel];
    
    // container stack view
    [self.containerStackView addArrangedSubview:self.labelStackView];
    [self.containerStackView addArrangedSubview:self.itemCollectionView];
    [self.itemCollectionView anchorTop:nil leading:self.containerStackView.leadingAnchor bottom:nil trailing:self.containerStackView.trailingAnchor padding:&insetsZero size:&sizeZero];
    
    // add to view
    [self addSubview:self.containerStackView];
    
    
    [self.containerStackView fillSuperview:&insetsZero];
    
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
