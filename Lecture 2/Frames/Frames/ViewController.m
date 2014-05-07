//
//  ViewController.m
//  Frames
//
//  Created by Chad Zeluff on 5/7/14.
//  Copyright (c) 2014 Chad Zeluff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 80, 80)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Click Me" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button sizeToFit];
    button.center = self.view.center;
}

@end
