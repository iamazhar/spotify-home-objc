//
//  Artist.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Artist : NSObject

@property (atomic, strong) NSString *artistId;
@property (atomic, strong) NSString *name;
@property (atomic, strong) NSMutableArray *images;

@end

NS_ASSUME_NONNULL_END
