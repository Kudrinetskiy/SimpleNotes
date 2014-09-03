//
//  PSRDetailViewController.h
//  SimpleNotes
//
//  Created by Daniil Korotin on 24.04.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSRNote.h"
#import "PSRColorSelectViewController.h"
#import "PSRFontSelectionViewController.h"

@interface PSRDetailViewController : UIViewController <PSRColorSelectViewControllerDelegate,PSRFontSelectionViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIStepper *fontSizeStepper;
@property (nonatomic) IBOutlet UITextView *textView;
@property (nonatomic) PSRNote *note;

@end
