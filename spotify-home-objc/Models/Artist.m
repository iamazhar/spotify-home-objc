//
//  Artist.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "Artist.h"

@implementation Artist

- (instancetype)init:(NSString *)artistId name:(NSString *)name images:(NSMutableArray *)images
{
    self = [super init];
    if (self) {
        self.artistId = artistId;
        self.name = name;
        self.images = images;
    }
    return self;
}

@end
