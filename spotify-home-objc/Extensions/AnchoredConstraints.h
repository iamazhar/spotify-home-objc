//
//  AnchoredConstraints.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnchoredConstraints : NSObject

@property (nonatomic ,weak) NSLayoutConstraint *top;
@property (nonatomic ,weak) NSLayoutConstraint *leading;
@property (nonatomic ,weak) NSLayoutConstraint *bottom;
@property (nonatomic ,weak) NSLayoutConstraint *trailing;
@property (nonatomic ,weak) NSLayoutConstraint *width;
@property (nonatomic ,weak) NSLayoutConstraint *height;

@end

