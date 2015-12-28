//
//  LLViewController.m
//  LLNavView
//
//  Created by lin on 15/12/26.
//  Copyright © 2015年 lin. All rights reserved.
//

#import "LLTabbarController.h"

@interface LLTabbarController ()

@end

@implementation LLTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.tabBarItem.title  = @"主页";
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.tabBarItem.title  = @"个人";
    
    self.viewControllers = @[vc1, vc2];
    
    [self initNav];
}

- (void)initNav {
    self.title = @"LLNavView";
    self.navigationItem.titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 20)];
    self.navigationItem.titleView.backgroundColor = [UIColor redColor];
    UIButton *button = [[UIButton alloc] init];
    button.width  = 80;
    button.height = 20;
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"完成" forState:UIControlStateNormal];
    button.layer.cornerRadius = 2;
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    UIBarButtonItem *spaceItem  = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spaceItem.width = 60;
    self.navigationItem.leftBarButtonItems = @[spaceItem, buttonItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
