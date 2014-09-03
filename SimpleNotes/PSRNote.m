//
//  PSRNote.m
//  SimpleNotes
//
//  Created by Daniil Korotin on 24.04.14.
//  Copyright (c) 2014 Daniil Korotin. All rights reserved.
//

#import "PSRNote.h"
#import "UIColor+PSRColorConversion.h"

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

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.text forKey:@"text"];
    [coder encodeObject:[self.textColor psr_colorToString] forKey:@"textColor"];
    [coder encodeObject:self.font forKey:@"font"];
    [coder encodeObject:self.date forKey:@"date"];
}    

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    
    if (self) {
        self.text = [aDecoder decodeObjectForKey:@"text"];
        self.textColor = [UIColor psr_stringToColor:[aDecoder decodeObjectForKey:@"textColor"]];
        self.font = [aDecoder decodeObjectForKey:@"font"];
        self.date = [aDecoder decodeObjectForKey:@"date"];
    }
    
    return self; 
}
@end
