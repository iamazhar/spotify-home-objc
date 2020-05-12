//
//  HomeViewController.m
//  spotify-home-objc
//
//  Created by Azhar Anwar on 5/2/20.
//  Copyright © 2020 Azhar Anwar. All rights reserved.
//

#import "HomeViewController.h"
#import "Track.h"
#import "HomeTableView.h"
#import "GridTableViewCell.h"
#import "CarouselTableViewCell.h"
#import "Album.h"

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (atomic) NSMutableArray<Track*> *tracks;
@property (nonatomic) HomeTableView *homeTableView;

@end

@implementation HomeViewController

- (void)setTableView:(HomeTableView *)homeTableView {
    _homeTableView = homeTableView;
    [homeTableView setBackgroundColor:UIColor.clearColor];
}

- (void)loadTestData {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"test-data" ofType:@"json"];
    NSData *jsonData = [[NSData alloc] initWithContentsOfFile:filePath];
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    
    NSArray *tracks = jsonDict[@"items"];
    
    // loop over dictionary
    for (NSDictionary *track in tracks) {
        NSString *trackId = track[@"id"];
        NSString *trackName = track[@"name"];
        NSArray *trackImages = track[@"album"][@"images"];
        
        Track *currentTrack = [[Track alloc] initWith:trackId images:trackImages name:trackName];
        [self.tracks addObject:currentTrack];
    }
    // reload table view
    [self.homeTableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:UIColor.blueColor];
    
    self.tracks = [[NSMutableArray<Track *> alloc] init];
    self.homeTableView = [[HomeTableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.homeTableView];
    
    [self.homeTableView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [[self.homeTableView.topAnchor constraintEqualToAnchor:self.view.topAnchor] setActive:YES];
    [[self.homeTableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor] setActive:YES];
    [[self.homeTableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor] setActive:YES];
    [[self.homeTableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor] setActive:YES];
    
    [self.homeTableView setDelegate:self];
    [self.homeTableView setDataSource:self];
    
    // setup nav bar and gradient background
    [self setupNavBar];
    
    // load json test data
    [self loadTestData];
}

-(void) setupBackgroundGradient {
    CAGradientLayer *layer = CAGradientLayer.new;
    [layer setFrame:self.view.frame];
    
    NSArray *colors = [[NSArray alloc] initWithObjects:UIColor.darkGrayColor, UIColor.blueColor, nil];
    [layer setColors:colors];
    [layer setLocations:@[@0.0, @0.2]];
    [self.view.layer addSublayer:layer];
}

-(void) setupNavBar {
    // style nav bar
    [self.navigationController.navigationBar setBackgroundImage:UIImage.new forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:UIImage.new];
    [self.navigationController.navigationBar setTranslucent:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tracks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0: {
            GridTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Common.gridItemReuseIdentifier forIndexPath:indexPath];
            cell.sectionLabel.text = @"Good evening";
            cell.gridCollectionView.tracks = self.tracks;
            return cell;
            
        }
            break;
            
        case 1: {
            CarouselTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Common.itemReuseIdentifier forIndexPath:indexPath];
            cell.sptCellSize = CGSizeMake(113, 150);
            cell.sectionLabel.text = @"Your top tracks";
            cell.itemCollectionView.tracks = self.tracks;
            return cell;
        }
            break;
            
        case 2: {
            CarouselTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Common.itemReuseIdentifier forIndexPath:indexPath];
            cell.sptCellSize = CGSizeMake(160, 200);
            cell.sectionLabel.text = @"Your top tracks";
            cell.itemCollectionView.tracks = self.tracks;
            return cell;
        }
            break;
        default: {
            CarouselTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Common.itemReuseIdentifier forIndexPath:indexPath];
            cell.sptCellSize = CGSizeMake(160, 200);
            cell.sectionLabel.text = @"Your top tracks";
            cell.itemCollectionView.tracks = self.tracks;
            return cell;
        }
            break;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            return UIScreen.mainScreen.bounds.size.height / 4;
            break;
        case 1:
            return UIScreen.mainScreen.bounds.size.height / 3.5;
            break;
        case 2:
            return UIScreen.mainScreen.bounds.size.height / 3.0;
            break;
        default:
            return UIScreen.mainScreen.bounds.size.height / 3.0;
            break;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
}

@end
