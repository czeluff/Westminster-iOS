//
//  FirstTableViewController.m
//  TableProject2
//
//  Created by Chad Zeluff on 5/14/14.
//  Copyright (c) 2014 Chad Zeluff. All rights reserved.
//

#import "FirstTableViewController.h"

@interface FirstTableViewController ()

@property (nonatomic, strong) NSArray *colorsArray;

@end

@implementation FirstTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colorsArray = @[@"Red", @"Orange", @"Yellow", @"Green",
                         @"Blue", @"Indigo", @"Violet", @"Light Urple"];
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
