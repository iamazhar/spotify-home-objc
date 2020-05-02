//
//  Common.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 4/30/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Common : NSObject

@property (class, nonatomic) NSString *itemReuseIdentifier;
@property (class, nonatomic) NSString *gridItemReuseIdentifier;
@property (class, nonatomic) CGFloat signOutButtonSize;

@end

NS_ASSUME_NONNULL_END
