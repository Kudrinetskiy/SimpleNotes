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

@end

@implementation PSRColorSelectViewController

#pragma mark - ViewController lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.colorSelectView = (PSRColorSelectView *)self.view;
    self.colorSelectView.colorView.backgroundColor = self.noteColor;
    CIColor * color = [self.noteColor psr_ciColor];
    self.colorSelectView.redSlider.value = color.red;
    self.colorSelectView.greenSlider.value = color.green;
    self.colorSelectView.blueSlider.value = color.blue;
}

#pragma mark - IBActions

- (IBAction)setComponent:(id)sender
{
    CIColor * color = [self.noteColor psr_ciColor];
    self.colorSelectView.colorView.backgroundColor = [UIColor
                                                      colorWithRed:self.colorSelectView.redSlider.value
                                                      green:self.colorSelectView.greenSlider.value
                                                      blue:self.colorSelectView.blueSlider.value
                                                      alpha:color.alpha];
}

- (IBAction)finishColorEditing:(id)sender
{
    [self.delegate addColorSelectViewController:self didFinishEditingColor:self.colorSelectView.colorView.backgroundColor];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
