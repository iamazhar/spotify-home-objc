//
//  CarouselTableViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "CarouselTableViewCell.h"

@interface CarouselTableViewCell ()

@property (nonatomic, weak) UIStackView *containerStackView;
@property (nonatomic, weak) UIStackView *labelStackView;

@end

@implementation CarouselTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
