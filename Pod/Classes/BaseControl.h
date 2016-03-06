//
//  BaseControl.h
//  SocialSchools
//
//  Created by Shwet Solanki on 05/08/15.
//  Copyright (c) 2015 Shwet Solanki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseControl : NSObject

+(NSDictionary *)fontAwesomeDictionary;
+(UIFont *)fontAwesomeWithSize:(CGFloat)pointSize;
+(NSMutableAttributedString *)attributedStringWithAwesomeText:(NSString *)awesomeFontText text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)color awesomeFontColor:(UIColor *)awesomeColor;

@end
