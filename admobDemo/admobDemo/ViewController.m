//
//  ViewController.m
//  admobDemo
//
//  Created by jins on 14-4-11.
//  Copyright (c) 2014年 BlackWater. All rights reserved.
//

#import "ViewController.h"
#import "GADBannerView.h"
#import "GADRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.adBanner = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerLandscape];
    self.adBanner.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.adBanner.adUnitID = @"a153466fdba92fc";
    self.adBanner.delegate = self;
    self.adBanner.rootViewController = self;
    [self.view addSubview:self.adBanner];
    
    [self.adBanner loadRequest:[GADRequest request]];
    
}

- (void)adViewDidReceiveAd:(GADBannerView *)adView {
    NSLog(@"Received ad successfully");
}

- (void)adView:(GADBannerView *)view
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"Failed to receive ad with error: %@", [error localizedFailureReason]);
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInt
                               duration:(NSTimeInterval)duration {
    if (UIInterfaceOrientationIsLandscape(toInt)) {
        self.adBanner.adSize = kGADAdSizeSmartBannerLandscape;
    } else {
        self.adBanner.adSize = kGADAdSizeSmartBannerPortrait;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
