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
- (void)addColorSelectViewController:(PSRColorSelectViewController *)colorSelectViewController didSetColor:(UIColor *)color;
@end

@interface PSRColorSelectViewController : UIViewController
@property (nonatomic) id <PSRColorSelectViewControllerDelegate> delegate;
@property (weak, nonatomic) UIColor * noteColor;
@end
