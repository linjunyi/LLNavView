//
//  LLNavViewController.m
//  LLNavView
//
//  Created by lin on 15/12/26.
//  Copyright © 2015年 lin. All rights reserved.
//

#import "LLNavViewController.h"
#import "LLAppDelegate.h"
#import "LLTabbarController.h"

@interface LLNavViewController ()

@end

@implementation LLNavViewController

+ (instancetype)shareInstance {
    static LLNavViewController *shareNav;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareNav = [[self alloc] init];
    });
    return shareNav;
}

- (void)openMainViewController {
    [self pushViewController:[[LLTabbarController alloc] init] animated:NO];
    LLAppDelegate *delegate = (LLAppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    delegate.window.rootViewController = self;
    [delegate.window makeKeyAndVisible];
}

@end
