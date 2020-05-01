//
//  Common.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "Common.h"

@implementation Common

+ (NSString *)itemReuseIdentifier {
    return @"item-cell";
}

+ (NSString *)gridItemReuseIdentifier{
    return @"grid-cell";
}

+ (CGFloat *)signOutButtonSize {
    CGFloat *f = 48;
    return f;
}

+ (void)setItemReuseIdentifier:(NSString *)itemReuseIdentifier {
    self.itemReuseIdentifier = itemReuseIdentifier;
}

+ (void)setGridItemReuseIdentifier:(NSString *)gridItemReuseIdentifier
{
    self.gridItemReuseIdentifier = gridItemReuseIdentifier;
}

+ (void)setSignOutButtonSize:(CGFloat *)signOutButtonSize
{
    self.signOutButtonSize = signOutButtonSize;
}

@end
