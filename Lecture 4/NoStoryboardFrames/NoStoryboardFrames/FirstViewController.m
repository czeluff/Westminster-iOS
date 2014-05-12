//
//  FirstViewController.m
//  NoStoryboardFrames
//
//  Created by Chad Zeluff on 5/9/14.
//  Copyright (c) 2014 Chad Zeluff. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdTableViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton *clickButton;
@property (nonatomic, strong) UIView *redView;

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"First";
    
    /*
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 80, 80)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    self.redView = redView;
     */
    
    self.redView = [[UIView alloc] initWithFrame:CGRectZero];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Click Me" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button sizeToFit];
    
    [button addTarget:self action:@selector(buttonPushed) forControlEvents:UIControlEventTouchUpInside];
    self.clickButton = button;
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.clickButton.center = self.view.center;
    
    self.redView.frame = CGRectMake(120, 100, CGRectGetWidth(self.view.frame), 80);
}

- (void)buttonPushed
{
    [self.navigationController pushViewController:[[ThirdTableViewController alloc] init] animated:YES];
}

@end
