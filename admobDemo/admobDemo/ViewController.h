//
//  ViewController.h
//  admobDemo
//
//  Created by jins on 14-4-11.
//  Copyright (c) 2014年 BlackWater. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerViewDelegate.h"

@class GADBannerView, GADRequest;

@interface ViewController : UIViewController <GADBannerViewDelegate>

@property (nonatomic, strong) GADBannerView *adBanner;

@end
