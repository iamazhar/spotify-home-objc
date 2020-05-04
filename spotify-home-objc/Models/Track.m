//
//  Track.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "Track.h"

@implementation Track

- (instancetype)initWith:(NSString *)trackId images:(NSArray<ItemImage *> *)images name:(NSString *)name
{
    self = [super init];
    if (self) {
        self.trackId = trackId;
        self.images = images;
        self.name = name;
    }
    return self;
}

@end
