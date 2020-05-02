//
//  CarouselCollectionView.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Track.h"
#import "Artist.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarouselCollectionView : UICollectionView

@property (atomic, strong) NSMutableArray<Track *> *tracks;
@property (atomic, strong) NSMutableArray<Artist *> *artists;

@end

NS_ASSUME_NONNULL_END
