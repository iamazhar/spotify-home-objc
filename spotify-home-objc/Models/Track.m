//
//  Track.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "Track.h"

@implementation Track

- (instancetype)init:(NSString *)trackId album:(Album *)album name:(NSString *)name artists:(NSMutableArray *)artists
{
    self = [super init];
    if (self) {
        self.trackId = trackId;
        self.album = album;
        self.name = name;
        self.artists = artists;
    }
    return self;
}

@end
