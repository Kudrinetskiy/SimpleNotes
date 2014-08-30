//
//  PSRFontSelectionViewController.h
//  SimpleNotes
//
//  Created by admin on 29.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PSRFontSelectionViewController;

@protocol PSRFontSelectionViewControllerDelegate <NSObject>
- (void)addFontSelectionViewController:(PSRFontSelectionViewController *)fontSelectionViewController didFinishSelectingFont:(UIFont *)font;
@end

@interface PSRFontSelectionViewController : UIViewController

@property (nonatomic) id <PSRFontSelectionViewControllerDelegate> delegate;

@end
