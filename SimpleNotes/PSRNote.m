//
//  PSRNote.m
//  SimpleNotes
//
//  Created by Daniil Korotin on 24.04.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRNote.h"

@implementation PSRNote

- (id)init {
    self = [super init];
    
    if (self) {
        _text = @"New note";
        _textColor = [UIColor blackColor];
        _font = [UIFont systemFontOfSize:17];
        _date = [NSDate date];
    }
    
    return self;
}

- (NSString *)uiColorToString:(UIColor *)color
{
    return [[color description] componentsSeparatedByString:@"e "][1];
}

- (UIColor *)stringToUIColor:(NSString *)colorString
{
    CIColor * ciColor = [CIColor colorWithString:colorString];
    UIColor * color = [UIColor colorWithRed:ciColor.red
                                      green:ciColor.green
                                       blue:ciColor.blue
                                      alpha:ciColor.alpha];
    return color;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.text forKey:@"text"];
    [coder encodeObject:[self uiColorToString:self.textColor] forKey:@"textColor"];
    [coder encodeObject:self.font forKey:@"font"];
    [coder encodeObject:self.date forKey:@"date"];
}    

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"text"];
        self.textColor = [self stringToUIColor:[aDecoder decodeObjectForKey:@"textColor"]];
        self.font = [aDecoder decodeObjectForKey:@"font"];
        self.date = [aDecoder decodeObjectForKey:@"date"];
    }
    
    return self; 
}
@end
