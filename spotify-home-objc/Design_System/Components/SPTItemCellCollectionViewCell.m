//
//  SPTItemCellCollectionViewCell.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "SPTItemCellCollectionViewCell.h"

@implementation SPTItemCellCollectionViewCell
{
    BOOL didScaleDownOnTouch;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        didScaleDownOnTouch = NO;
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    didScaleDownOnTouch = NO;
    [self setTouchDownState];
    [self touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.superview touchesMoved:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self setTouchUpStateWithAnimation];
    [self.superview touchesCancelled:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.superview touchesEnded:touches withEvent:event];
    [self setTouchUpStateWithAnimation];
}

- (void)setTouchDownState {
    CGFloat touchDownScale = 0.964;
    [UIView animateWithDuration:0.25 delay:0.0 usingSpringWithDamping:0.9 initialSpringVelocity:0.4 options:UIViewAnimationOptionCurveLinear animations:^{
        self.transform = CGAffineTransformScale(self.transform, touchDownScale, touchDownScale);
    } completion:^(BOOL finished) {
        self->didScaleDownOnTouch = YES;
    }];
}

- (void)setTouchUpStateWithAnimation {
    [UIView animateWithDuration:0.25 delay:0.0 usingSpringWithDamping:0.9 initialSpringVelocity:0.4 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        self->didScaleDownOnTouch = YES;
    }];
}

@end
