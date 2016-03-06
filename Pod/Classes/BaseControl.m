//
//  BaseControl.m
//  SocialSchools
//
//  Created by Shwet Solanki on 05/08/15.
//  Copyright (c) 2015 Shwet Solanki. All rights reserved.
//

#import "BaseControl.h"
#import "NSString+Extras.h"

@implementation BaseControl

static NSDictionary * fontAwesomeDict = nil;
+(NSDictionary *)fontAwesomeDictionary
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fontAwesomeDict = @{
                                  @"fa-gear" : @"\uf013",
                                  @"fa-comment" : @"\uf0e5",
                                  @"fa-heart" : @"\uf08a",
                                  @"fa-heart-filled" : @"\uf004",
                                  @"fa-globe" : @"\uf0ac",
                                  @"fa-clock" : @"\uf017",
                                  @"fa-map-marker" : @"\uf041",
                                  @"fa-checkmark" : @"\uf00c",
                                  @"fa-questionmark" : @"\uf128",
                                  @"fa-cross" : @"\uf00d",
                                  @"fa-home" : @"\uf015",
                                  @"fa-phone" : @"\uf095",
                                  @"fa-envelope" : @"\uf0e0",
                                  @"fa-calendar" : @"\uf133",
                                  @"fa-user" : @"\uf007",
                                  @"fa-facebook" : @"\uf09a",//@"\uf082",
                                  @"fa-twitter" : @"\uf099",
                                  @"fa-google" : @"\uf1a0",//@"\uf0d4"
                                  @"fa-users" : @"\uf0c0",
                                  @"fa-search" : @"\uf002"
                                  };
    });
    
    return fontAwesomeDict;
}

static UIFont * fontAwesome = nil;
+(UIFont *)fontAwesomeWithSize:(CGFloat)pointSize
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fontAwesome = [UIFont fontWithName:@"FontAwesome" size:20];
    });
    
    return [fontAwesome fontWithSize:pointSize];
}

+(NSMutableAttributedString *)attributedStringWithAwesomeText:(NSString *)awesomeFontText text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)color awesomeFontColor:(UIColor *)awesomeColor
{
    UIFont * awesomeFont = [BaseControl fontAwesomeWithSize:font.pointSize];

    text = [[[BaseControl fontAwesomeDictionary][awesomeFontText] stringByAppendingString:@" "] stringByAppendingString:text];
    text = [text trimmedString];
    
    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:text attributes:@{NSFontAttributeName : font, NSForegroundColorAttributeName : color}];
    [attributedString addAttribute:NSFontAttributeName value:awesomeFont range:[attributedString.string rangeOfString:[BaseControl fontAwesomeDictionary][awesomeFontText]]];
    [attributedString addAttribute:NSForegroundColorAttributeName value:awesomeColor range:[attributedString.string rangeOfString:[BaseControl fontAwesomeDictionary][awesomeFontText]]];
    return attributedString;
}

@end
