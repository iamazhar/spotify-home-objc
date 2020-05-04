//
//  Track.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Artist.h"
#import "ItemImage.h"

NS_ASSUME_NONNULL_BEGIN

@interface Track : NSObject

@property (atomic, strong) NSString *trackId;
@property (atomic, strong) NSArray<ItemImage *> *images;
@property (atomic, strong) NSString *name;
@property (atomic, strong) NSMutableArray<Artist *> *artists;
- (instancetype)initWith:(NSString *)trackId images:(NSArray<ItemImage *> *)images name:(NSString *)name;
@end


NS_ASSUME_NONNULL_END
