//
//  NSObject+PSRColorConversion.m
//  SimpleNotes Lesson1
//
//  Created by admin on 02.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "NSObject+PSRColorConversion.h"

@implementation NSObject (PSRColorConversion)

- (CIColor * )psr_uiColorToCIColor:(UIColor *)color
{
    NSString * colorString = [[color description] componentsSeparatedByString:@"e "][1];
    return [CIColor colorWithString:colorString];
}

- (NSString *)psr_uiColorToString:(UIColor *)color
{
    return [[color description] componentsSeparatedByString:@"e "][1];
}

- (UIColor *)psr_stringToUIColor:(NSString *)colorString
{
    CIColor * ciColor = [CIColor colorWithString:colorString];
    UIColor * color = [UIColor colorWithRed:ciColor.red
                                      green:ciColor.green
                                       blue:ciColor.blue
                                      alpha:ciColor.alpha];
    return color;
}

@end
