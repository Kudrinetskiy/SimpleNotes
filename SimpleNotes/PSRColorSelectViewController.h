//
//  PSRColorSelectViewController.h
//  SimpleNotes
//
//  Created by admin on 23.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PSRColorSelectView, PSRDetailViewController, PSRColorSelectViewController;

@protocol PSRColorSelectViewControllerDelegate <NSObject>
- (void)addColorSelectViewController:(PSRColorSelectViewController *)colorSelectViewController didFinishEditingColor:(UIColor *)color;
@end

@interface PSRColorSelectViewController : UIViewController

@property (nonatomic) id <PSRColorSelectViewControllerDelegate> delegate;
@property (nonatomic) UIColor * noteColor;
@property (nonatomic) PSRColorSelectView * colorSelectView;

- (IBAction)setComponent:(id)sender;
- (IBAction)finishColorEditing:(id)sender;

@end
