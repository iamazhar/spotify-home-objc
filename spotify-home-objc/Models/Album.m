//
//  Album.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "Album.h"

@implementation Album

- (instancetype)init:(NSString *)albumId images:(NSMutableArray *)images
{
    self = [super init];
    if (self) {
        self.albumId = albumId;
        self.images = images;
    }
    return self;
}

@end
