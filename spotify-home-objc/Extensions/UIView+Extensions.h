//
//  UIView+Extensions.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class AnchoredConstraints;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (UIView_Extensions)

- (AnchoredConstraints *)anchorTop:(NSLayoutYAxisAnchor *)top leading:(NSLayoutXAxisAnchor *)leading bottom:(NSLayoutYAxisAnchor *)bottom trailing:(NSLayoutXAxisAnchor *)trailing padding:(UIEdgeInsets *)padding size:(CGSize *)size;

- (AnchoredConstraints *)fillSuperview:(UIEdgeInsets *)padding;

- (AnchoredConstraints *)fillSuperviewSafeAreaLayoutGuide:(UIEdgeInsets *)padding;

@end

NS_ASSUME_NONNULL_END
