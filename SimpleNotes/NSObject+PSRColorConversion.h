//
//  NSObject+PSRColorConversion.h
//  SimpleNotes Lesson1
//
//  Created by admin on 02.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PSRColorConversion)

- (CIColor * )psr_uiColorToCIColor:(UIColor *)color;
- (NSString *)psr_uiColorToString:(UIColor *)color;
- (UIColor *)psr_stringToUIColor:(NSString *)colorString;

@end
