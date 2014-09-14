//
//  PSRColorSelectView.m
//  SimpleNotes
//
//  Created by admin on 24.08.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRColorSelectView.h"
#import "UIColor+PSRColorConversion.h"

@interface PSRColorSelectView ()
@property (nonatomic) IBOutlet UIView * colorView;
@property (nonatomic) IBOutlet UISlider *redSlider;
@property (nonatomic) IBOutlet UISlider *greenSlider;
@property (nonatomic) IBOutlet UISlider *blueSlider;
@end

@implementation PSRColorSelectView

#pragma mark - IBActions

- (IBAction)setColorViewColor:(id)sender
{
    self.colorView.backgroundColor = [self getSelectedColor];
}

#pragma mark - Private

- (void)setPreviousColor:(UIColor *)color
{
    self.colorView.backgroundColor = color;
    CIColor * ciColor = [color psr_ciColor];
    self.redSlider.value = ciColor.red;
    self.greenSlider.value = ciColor.green;
    self.blueSlider.value = ciColor.blue;
}

- (UIColor *)getSelectedColor
{
    CIColor * color = [self.colorView.backgroundColor psr_ciColor];
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:color.alpha];
}

@end
