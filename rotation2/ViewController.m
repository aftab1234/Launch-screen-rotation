//
//  ViewController.m
//  rotation2
//
//  Created by Sam on 11/05/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "ViewController.h"
#import "Portrait.h"
#import <objc/message.h>

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    UIInterfaceOrientation orientationStatusBar =[[UIApplication sharedApplication] statusBarOrientation];
    switch (orientationStatusBar) {
        case UIInterfaceOrientationPortrait:break;
        case UIInterfaceOrientationLandscapeLeft:
    objc_msgSend([UIDevice currentDevice], @selector(setOrientation:),UIInterfaceOrientationPortrait);
            break;
            
    case UIInterfaceOrientationLandscapeRight:
    objc_msgSend([UIDevice currentDevice], @selector(setOrientation:), UIInterfaceOrientationPortrait);
    break;
            
        default:
            break;
    }
}

// this permit autorotate
- (BOOL) shouldAutorotate
{
    // this lines permit rotate if viewController is not portrait
    UIInterfaceOrientation orientationStatusBar =[[UIApplication sharedApplication] statusBarOrientation];
    if (orientationStatusBar != UIInterfaceOrientationPortrait) {
        return YES;
    }
    //this line not permit rotate is the viewController is portrait
    return NO;
}

@end
