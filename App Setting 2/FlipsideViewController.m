//
//  FlipsideViewController.m
//  App Setting 2
//
//  Created by Zeev Vax on 11/24/11.
//  Copyright (c) 2011 Magnum Semiconductor. All rights reserved.
//

#import "FlipsideViewController.h"
#import "MainViewController.h"

@implementation FlipsideViewController

@synthesize delegate = _delegate;
@synthesize engineSwitch;
@synthesize warpFactorSlider;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self refreshFields];
	// Do any additional setup after loading the view, typically from a nib.
    UIApplication *app = [UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:app];
}

- (void)applicationWillEnterForeground:(NSNotification *)notification {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults synchronize];
    [self refreshFields];
}

-(void) refreshFields{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    engineSwitch.on = [[defaults objectForKey:kWarpDriveKey] isEqualToString:@"Engaged"] ? YES:NO;
    warpFactorSlider.value = [defaults floatForKey:kWarpFactorKey];
}

-(IBAction)tochEngineSwitch:(id)sender{
    NSUserDefaults *defults = [NSUserDefaults standardUserDefaults];
    NSString *perfValue = engineSwitch.on ? @"Engaged":@"Disabled";
    [defults setObject:perfValue forKey:kWarpDriveKey];
    [defults synchronize];

}

-(IBAction)touchWarpSlider:(id)sender{
    NSUserDefaults *defults = [NSUserDefaults standardUserDefaults];
    [defults setFloat:warpFactorSlider.value forKey:kWarpFactorKey];
    [defults synchronize];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
