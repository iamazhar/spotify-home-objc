//
//  Album.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemImage.h"

NS_ASSUME_NONNULL_BEGIN

@interface Album : NSObject

@property (atomic, strong) NSString *albumId;
@property (atomic, strong) NSMutableArray<ItemImage *> *images;
- (instancetype)init:(NSString *)albumId images:(NSMutableArray *)images;
@end

NS_ASSUME_NONNULL_END
