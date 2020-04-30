//
//  ItemImage.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "ItemImage.h"

@implementation ItemImage

- (instancetype)init:(NSNumber *)height width:(NSNumber *)width url:(NSString *)url
{
    self = [super init];
    if (self) {
        self.height = height;
        self.width = width;
        self.url = url;
    }
    return self;
}

@end
