//
//  PSRColorSelectView.h
//  SimpleNotes
//
//  Created by admin on 24.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSRColorSelectView : UIView

@property (nonatomic) IBOutlet UIView * colorView;
@property (nonatomic) IBOutlet UISlider *redSlider;
@property (nonatomic) IBOutlet UISlider *greenSlider;
@property (nonatomic) IBOutlet UISlider *blueSlider;

@end
