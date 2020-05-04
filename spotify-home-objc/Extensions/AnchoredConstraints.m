//
//  AnchoredConstraints.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "AnchoredConstraints.h"

@implementation AnchoredConstraints

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.top = _top;
        self.bottom = _bottom;
        self.leading = _leading;
        self.trailing = _trailing;
        self.width = _width;
        self.height = _height;
    }
    return self;
}

@end
