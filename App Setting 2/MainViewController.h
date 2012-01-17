//
//  MainViewController.h
//  App Setting 2
//
//  Created by Zeev Vax on 11/24/11.
//  Copyright (c) 2011 Magnum Semiconductor. All rights reserved.
//

#import "FlipsideViewController.h"
#define kUsernameKey        @"username"
#define kPasswordKey        @"password"
#define kProtocolKey        @"protocol"
#define kWarpDriveKey        @"warp"
#define kWarpFactorKey       @"warpfactor"
#define kFavoriteTeaKey      @"favoriteTea"
#define kFavoriteCandyKey    @"favoriteCandy"
#define kFavoriteGameKey     @"favoriteGame"
#define kFavoriteExcuseKey   @"favoriteExcuse"
#define kFavoriteSinKey      @"favoriteSin"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>
@property (nonatomic, strong) IBOutlet UILabel *usernameLabel;
@property (nonatomic, strong) IBOutlet UILabel *passwordLabel;
@property (nonatomic, strong) IBOutlet UILabel *protocolLabel;
@property (nonatomic, strong) IBOutlet UILabel *warpDriveLabel;
@property (nonatomic, strong) IBOutlet UILabel *warpFactorLabel;
@property (nonatomic, strong) IBOutlet UILabel *favoriteTeaLabel;
@property (nonatomic, strong) IBOutlet UILabel *favoriteCandyLabel;
@property (nonatomic, strong) IBOutlet UILabel *favoriteGameLabel;
@property (nonatomic, strong) IBOutlet UILabel *favoriteExcuseLabel;
@property (nonatomic, strong) IBOutlet UILabel *favoriteSinLabel;

- (void)refreshFields;
- (IBAction)showInfo:(id)sender;

@end
