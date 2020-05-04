//
//  GridCollectionView.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Track.h"
#import "GridCollectionViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface GridCollectionView : UICollectionView

@property (nonatomic, weak) NSArray<Track *> *tracks;

@end

NS_ASSUME_NONNULL_END
