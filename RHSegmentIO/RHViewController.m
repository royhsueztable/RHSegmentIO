//
//  RHViewController.m
//  RHSegmentIO
//
//  Created by Roy Hsu on 2014/8/18.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "RHViewController.h"
#import <Analytics.h>

#define USER @"Roy Hsu"

@interface RHViewController ()

@end

@implementation RHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setup];
}

- (void)setup
{
    [[SEGAnalytics sharedAnalytics] identify:USER];
}

- (void)trackingCode
{
    [[SEGAnalytics sharedAnalytics] screen:@"Tracking 1"];
    [[SEGAnalytics sharedAnalytics] track:@"Action 1"];
}

- (void)trackingCode2
{
    [[SEGAnalytics sharedAnalytics] screen:@"Tracking 2"];
    [[SEGAnalytics sharedAnalytics] track:@"Action 2"];
}

- (IBAction)sendTrackingButton:(id)sender
{
    [self trackingCode];
}

- (IBAction)sendTrackingButton2:(id)sender
{
    [self trackingCode2];
}

@end
