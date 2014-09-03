//
//  NSObject+PSRColorConversion.h
//  SimpleNotes Lesson1
//
//  Created by admin on 02.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (PSRColorConversion)

+ (UIColor *)psr_stringToColor:(NSString *)colorString;
- (CIColor * )psr_ciColor;
- (NSString *)psr_colorToString;

@end
