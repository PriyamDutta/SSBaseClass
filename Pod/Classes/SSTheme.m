//
//  SSTheme.m
//  Tripsee
//
//  Created by Shwet Solanki on 30/10/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//

#import "SSTheme.h"
#import <HexColors/HexColors.h>
#import <objc/runtime.h>

@interface SSTheme ()
@property (nonatomic, strong) NSDictionary * basicThemeDict;
@end

@implementation SSTheme

static SSTheme * themeInstance = nil;
+(instancetype)currentTheme
{
    if(themeInstance == nil)
    {
        [self loadThemeFromClass:objc_getClass([@"ThemeConfig" UTF8String])];
        [themeInstance applyTheme];
    }
    NSAssert(themeInstance != nil, @"No theme is loaded");
    return themeInstance;
}

+(void)loadThemeFromClass:(Class)themeClass
{
    NSDictionary * theme = @{
                             @"Colors" : [themeClass colors],
                             @"Fonts" : [themeClass fonts],
                             @"System" : [themeClass system]
                             };
    [self loadThemeFromDictionary:theme];
}

+(void)loadThemeFromDictionary:(NSDictionary *)theme
{
    themeInstance = [SSTheme new];
    
    NSMutableDictionary * tempDict = [NSMutableDictionary dictionary];
    [theme[@"Fonts"] enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        tempDict[key] = [UIFont fontWithName:obj[@"Font"] size:[obj[@"Size"] floatValue]];
    }];
    themeInstance.fontDictionary = [NSDictionary dictionaryWithDictionary:tempDict];
    
    [tempDict removeAllObjects];
    [theme[@"Colors"] enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        tempDict[key] = [UIColor hx_colorWithHexString:obj];
    }];
    themeInstance.colorDictionary = [NSDictionary dictionaryWithDictionary:tempDict];
    
    [tempDict removeAllObjects];
    [theme[@"System"] enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSMutableDictionary * tempInnerDict = [NSMutableDictionary dictionary];
        [obj[@"Colors"] enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            tempInnerDict[key] = [UIColor hx_colorWithHexString:obj];
        }];
        [obj[@"Fonts"] enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            tempInnerDict[key] = [UIFont fontWithName:obj[@"Font"] size:[obj[@"Size"] floatValue]];
        }];
        tempDict[key] = tempInnerDict;
    }];
    themeInstance.basicThemeDict = [NSDictionary dictionaryWithDictionary:tempDict];
}

-(void)applyTheme
{
    [[UINavigationBar appearance] setTintColor:_basicThemeDict[@"Navbar"][@"BarColor"]];
    [[UINavigationBar appearance] setBarTintColor:_basicThemeDict[@"Navbar"][@"BarTintColor"]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSFontAttributeName : _basicThemeDict[@"Navbar"][@"TitleFont"],
                                                           NSForegroundColorAttributeName : _basicThemeDict[@"Navbar"][@"BarColor"]
                                                           }];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName : _basicThemeDict[@"BarItem"][@"TitleFont"]} forState:UIControlStateNormal];
    
    [[UITabBar appearance] setTintColor:_basicThemeDict[@"Tabbar"][@"BarColor"]];
    [[UITabBar appearance] setBarTintColor:_basicThemeDict[@"Tabbar"][@"BarTintColor"]];
}

- (UIFont *)fontForKey:(NSString *)key
{
    return self.fontDictionary[key];
}

- (UIColor *)colorForKey:(NSString *)key
{
    return self.colorDictionary[key];
}

@end
