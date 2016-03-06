//
//  SSTheme.h
//  Tripsee
//
//  Created by Shwet Solanki on 30/10/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

IB_DESIGNABLE
@protocol ThemeConfigProtocol <NSObject>

+(NSDictionary *)colors;
+(NSDictionary *)fonts;
+(NSDictionary *)system;

@end

@interface SSTheme : NSObject

@property (nonatomic, strong) NSDictionary * fontDictionary;
@property (nonatomic, strong) NSDictionary * colorDictionary;

+(instancetype)currentTheme;

+(void)loadThemeFromClass:(Class)themeClass;
-(void)applyTheme;

-(UIFont *)fontForKey:(NSString *)key;
-(UIColor *)colorForKey:(NSString *)key;

@end
