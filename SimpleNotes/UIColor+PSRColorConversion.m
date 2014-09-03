//
//  NSObject+PSRColorConversion.m
//  SimpleNotes Lesson1
//
//  Created by admin on 02.09.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "UIColor+PSRColorConversion.h"

@implementation UIColor (PSRColorConversion)

+ (UIColor *)psr_stringToColor:(NSString *)colorString
{
    CIColor * ciColor = [CIColor colorWithString:colorString];
    UIColor * color = [UIColor colorWithRed:ciColor.red
                                      green:ciColor.green
                                       blue:ciColor.blue
                                      alpha:ciColor.alpha];
    return color;
}

- (CIColor * )psr_ciColor
{
    NSString * colorString = [[self description] componentsSeparatedByString:@"e "][1];
    return [CIColor colorWithString:colorString];
}

- (NSString *)psr_colorToString
{
    return [[self description] componentsSeparatedByString:@"e "][1];
}

@end
