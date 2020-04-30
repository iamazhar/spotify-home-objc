//
//  ItemImage.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ItemImage : NSObject

@property (atomic, strong) NSNumber *height;
@property (atomic, strong) NSNumber *width;
@property (atomic, strong) NSString *url;

@end

NS_ASSUME_NONNULL_END
