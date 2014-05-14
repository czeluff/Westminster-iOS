//
//  CustomTableViewController.m
//  TableProject2
//
//  Created by Chad Zeluff on 5/14/14.
//  Copyright (c) 2014 Chad Zeluff. All rights reserved.
//

#import "CustomTableViewController.h"

@interface CustomTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *colorsArray;

@end

@implementation CustomTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    self.colorsArray = @[@"Red", @"Orange", @"Yellow", @"Green",
                         @"Blue", @"Indigo", @"Violet", @"Light Urple"];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
//    NSDictionary *dict = @{@"name" : @"Chad",
//                           @"age" : @26,
//                           @"phone" : @"8018312929"};
//    
//    NSLog(@"My name is: %@", dict[@"name"]);
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
//    self.tableView.frame = self.view.bounds;
    
    self.tableView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height / 2);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.colorsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ColorIdentifier"];
    
    if(!cell) //cell == nil
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ColorIdentifier"];
    }
    
    cell.textLabel.text = self.colorsArray[indexPath.row];
    
    return cell;
}

@end
