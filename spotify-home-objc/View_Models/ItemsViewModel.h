//
//  ItemsViewModel.h
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Track.h"
#import "Artist.h"

NS_ASSUME_NONNULL_BEGIN

@interface ItemsViewModel : NSObject

@property (nonatomic, strong) NSMutableArray<Track *> *tracks;
@property (nonatomic, strong) NSMutableArray<Artist *> *artists;

-(void) fetchTracks;
-(void) fetchArtists;

@end

NS_ASSUME_NONNULL_END
