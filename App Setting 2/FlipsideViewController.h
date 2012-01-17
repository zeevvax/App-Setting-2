//
//  FlipsideViewController.h
//  App Setting 2
//
//  Created by Zeev Vax on 11/24/11.
//  Copyright (c) 2011 Magnum Semiconductor. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) IBOutlet id <FlipsideViewControllerDelegate> delegate;
@property (nonatomic, strong) IBOutlet UISwitch *engineSwitch;
@property (nonatomic, strong) IBOutlet UISlider *warpFactorSlider;

-(void) refreshFields;
-(IBAction)tochEngineSwitch:(id)sender;
-(IBAction)touchWarpSlider:(id)sender;
- (IBAction)done:(id)sender;

@end
