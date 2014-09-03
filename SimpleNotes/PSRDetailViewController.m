//
//  PSRDetailViewController.m
//  SimpleNotes
//
//  Created by Daniil Korotin on 24.04.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRDetailViewController.h"
#import "PSRColorSelectViewController.h"
#import "PSRFontSelectionViewController.h"

@interface PSRDetailViewController ()

@end

@implementation PSRDetailViewController

#pragma mark - ViewController lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.note.text;
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel)];
    self.navigationItem.rightBarButtonItem = cancelButton;
    
    if (self.note) {
        self.textView.text = self.note.text;
        self.textView.textColor = self.note.textColor;
        self.textView.font = self.note.font;
        self.fontSizeStepper.value = self.note.font.pointSize;
    }
    else {
        self.textView.textColor = [UIColor blackColor];
    }
    
    [self.fontSizeStepper addTarget:self action:@selector(changeFontSize:) forControlEvents:UIControlEventValueChanged];
}

- (void)viewWillDisappear:(BOOL)animated {
    self.note.text = self.textView.text;
    self.note.textColor = self.textView.textColor;
    self.note.font = self.textView.font;
    self.fontSizeStepper.value = self.textView.font.pointSize;
}

#pragma mark - Private Methods

- (void)cancel {
    self.textView.text = self.note.text;
    self.textView.textColor = self.note.textColor;
    self.textView.font = self.note.font;
    self.fontSizeStepper.value = self.note.font.pointSize;
    [self.textView resignFirstResponder];
}

#pragma mark - PSRColorSelectViewController delegate

- (void)addColorSelectViewController:(PSRColorSelectViewController *)colorSelectViewController didFinishEditingColor:(UIColor *)color
{
    self.textView.textColor = color;
}

#pragma mark - PSRFontSelectionViewController delegate

- (void)addFontSelectionViewController:(PSRFontSelectionViewController *)fontSelectionViewController didFinishSelectingFont:(UIFont *)font
{
    self.textView.font = font;
    self.fontSizeStepper.value = self.textView.font.pointSize;
}

#pragma mark - Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"changeTextColor"]) {
        PSRColorSelectViewController * csvc = [segue destinationViewController];
        csvc.delegate = self;
        csvc.noteColor = self.textView.textColor;
    }
    if ([segue.identifier isEqualToString:@"changeFont"]) {
        PSRFontSelectionViewController * fsvc = [segue destinationViewController];
        fsvc.delegate = self;
    }
}

#pragma mark - Target-Actions

- (void)changeFontSize:(id)sender {
    self.note.textColor = self.textView.textColor;
    self.note.font = self.textView.font;
    self.textView.font = [self.note.font fontWithSize:self.fontSizeStepper.value];
}

@end
