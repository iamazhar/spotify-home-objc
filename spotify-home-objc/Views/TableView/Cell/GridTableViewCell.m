//
//  GridTableViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "GridTableViewCell.h"
#import "UIView+Extensions.h"

@interface GridTableViewCell ()
@property (nonatomic, weak) UIStackView *containerStackView;
@end

@implementation GridTableViewCell

- (void)setContainerStackView:(UIStackView *)containerStackView {
    self.containerStackView = _containerStackView;
    [self.containerStackView setTranslatesAutoresizingMaskIntoConstraints: NO];
    [self.containerStackView setAlignment:UIStackViewAlignmentLeading];
    [self.containerStackView setAxis:UILayoutConstraintAxisVertical];
    [self.containerStackView setSpacing:15.0];
}

- (void)setSectionLabel:(UILabel *)sectionLabel {
    self.sectionLabel = _sectionLabel;
    [self.sectionLabel setTranslatesAutoresizingMaskIntoConstraints: NO];
    [self.sectionLabel setFont:[UIFont systemFontOfSize:20 weight:UIFontWeightBold]];
    [self.sectionLabel setText:@"Good Evening"];
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
    
    UIEdgeInsets paddingZero = UIEdgeInsetsZero;
    UIEdgeInsets padding = UIEdgeInsetsMake(0, 15, 0, 15);
    CGSize size = CGSizeMake(0, 184);
    CGSize sizeZero = CGSizeZero;
    
    [self.containerStackView addArrangedSubview:self.sectionLabel];
    [self.containerStackView addArrangedSubview:self.gridCollectionView];
    
    [self.gridCollectionView anchorTop:nil leading:self.containerStackView.leadingAnchor bottom:nil trailing:self.containerStackView.trailingAnchor padding:&paddingZero size:&size];
    
    [self addSubview:self.containerStackView];
    [self.containerStackView anchorTop:self.topAnchor leading:self.leadingAnchor bottom:self.bottomAnchor trailing:self.trailingAnchor padding:&padding size:&sizeZero];
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
