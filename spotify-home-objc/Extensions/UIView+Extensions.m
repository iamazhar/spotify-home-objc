//
//  UIView+Extensions.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "UIView+Extensions.h"
#import "AnchoredConstraints.h"

@implementation UIView (UIView_Extensions)

- (AnchoredConstraints *)anchorTop:(NSLayoutYAxisAnchor *)top leading:(NSLayoutXAxisAnchor *)leading bottom:(NSLayoutYAxisAnchor *)bottom trailing:(NSLayoutXAxisAnchor *)trailing padding:(UIEdgeInsets *)padding size:(CGSize *)size {
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    AnchoredConstraints *anchoredConstraints = [[AnchoredConstraints alloc] init];
    
    anchoredConstraints.top = [self.topAnchor constraintEqualToAnchor:top constant:padding->top];
    anchoredConstraints.leading = [self.leadingAnchor constraintEqualToAnchor:leading constant:padding->left];
    anchoredConstraints.bottom = [self.bottomAnchor constraintEqualToAnchor:bottom constant:-padding->bottom];
    anchoredConstraints.trailing = [self.trailingAnchor constraintEqualToAnchor:trailing constant:-padding->right];
    anchoredConstraints.width = [self.widthAnchor constraintEqualToConstant:size->width];
    anchoredConstraints.height = [self.heightAnchor constraintEqualToConstant:size->height];
    
    [anchoredConstraints.top setActive:YES];
    [anchoredConstraints.leading setActive:YES];
    [anchoredConstraints.bottom setActive:YES];
    [anchoredConstraints.trailing setActive:YES];
    [anchoredConstraints.width setActive:YES];
    [anchoredConstraints.height setActive:YES];
    
    return anchoredConstraints;
}

- (AnchoredConstraints *)fillSuperview:(UIEdgeInsets *)padding {
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    CGSize size = CGSizeMake(0, 0);
    
    return [self anchorTop:self.superview.topAnchor leading:self.superview.leadingAnchor bottom:self.superview.bottomAnchor trailing:self.superview.trailingAnchor padding:padding size: &size];
}

- (AnchoredConstraints *)fillSuperviewSafeAreaLayoutGuide:(UIEdgeInsets *)padding {
    self.translatesAutoresizingMaskIntoConstraints = NO;

    CGSize size = CGSizeMake(0, 0);
    
    return [self anchorTop:self.safeAreaLayoutGuide.topAnchor leading:self.superview.safeAreaLayoutGuide.leadingAnchor bottom:self.superview.safeAreaLayoutGuide.bottomAnchor trailing:self.superview.safeAreaLayoutGuide.trailingAnchor padding:padding size:&size];
}

@end
