//
//  PSRColorSelectViewController.m
//  SimpleNotes
//
//  Created by admin on 23.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRColorSelectViewController.h"
#import "PSRColorSelectView.h"
#import "PSRDetailViewController.h"
#import "UIColor+PSRColorConversion.h"

@interface PSRColorSelectViewController ()
@property (nonatomic) IBOutlet PSRColorSelectView * colorSelectView;
@end

@implementation PSRColorSelectViewController

#pragma mark - ViewController lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.colorSelectView setPreviousColor:self.noteColor];
}

#pragma mark - IBActions

- (IBAction)finishColorEditing:(id)sender
{
    [self.delegate addColorSelectViewController:self didSetColor:[self.colorSelectView getSelectedColor]];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
