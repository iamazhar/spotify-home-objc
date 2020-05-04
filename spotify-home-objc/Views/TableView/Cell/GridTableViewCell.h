//
//  GridTableViewCell.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GridCollectionView.h"

NS_ASSUME_NONNULL_BEGIN

@interface GridTableViewCell : UITableViewCell

@property (nonatomic, weak) UILabel *sectionLabel;
@property (nonatomic, weak) GridCollectionView *gridCollectionView;

@end

NS_ASSUME_NONNULL_END
