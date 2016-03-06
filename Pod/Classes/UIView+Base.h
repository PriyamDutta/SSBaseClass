//
//  UIView+Base.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>

@interface UIView (Base)
-(void)addShadow:(CGFloat)cornerRadius color:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius;
-(void)addBorder:(CGFloat)borderWidth color:(NSString *)borderColorKey colorDict:(NSDictionary *)colorsDict;
-(void)updateView;
@end
