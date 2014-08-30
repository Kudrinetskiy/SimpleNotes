//
//  PSRFontSelectionViewController.m
//  SimpleNotes
//
//  Created by admin on 29.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRFontSelectionViewController.h"

@interface PSRFontSelectionViewController ()

@end

@implementation PSRFontSelectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITableViewHeaderFooterView * headerView = (UITableViewHeaderFooterView *)[UIView appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil];
    headerView.backgroundColor = [UIColor colorWithRed:1 green:0.95 blue:0.9 alpha:1];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[UIFont familyNames] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [UIFont familyNames][section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString * familyName = [UIFont familyNames][section];
    NSArray * fontNames = [UIFont fontNamesForFamilyName:familyName];
    return [fontNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    NSString * familyName = [UIFont familyNames][indexPath.section];
    NSString * fontName = [UIFont fontNamesForFamilyName:familyName][indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:fontName size:16];
    cell.textLabel.text = fontName;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    [self.delegate addFontSelectionViewController:self didFinishSelectingFont:cell.textLabel.font];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
