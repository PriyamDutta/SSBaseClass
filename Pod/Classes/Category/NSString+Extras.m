//
//  NSString+Extras.m
//  Tripsee
//
//  Created by Shwet Solanki on 30/10/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//

#import "NSString+Extras.h"

@implementation NSString (Extras)

-(NSString *)trimmedString
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(BOOL)isEmpty
{
    return [[self trimmedString] length] == 0 ? YES : NO;
}

-(CGSize)heightWithMaxWidth:(CGFloat)maxWidth andFont:(UIFont *)font
{
    CGRect frame = [self boundingRectWithSize:CGSizeMake(maxWidth, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil];
    return frame.size;
}

-(NSString *)dashIfEmpty
{
    return [self isEmpty] ? @"-" : self;
}

@end
