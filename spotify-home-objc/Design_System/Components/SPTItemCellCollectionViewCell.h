//
//  SPTItemCellCollectionViewCell.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/1/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPTItemCellCollectionViewCell : UICollectionViewCell
- (void)setTouchDownState;
- (void)setTouchUpStateWithAnimation;

@end

NS_ASSUME_NONNULL_END
