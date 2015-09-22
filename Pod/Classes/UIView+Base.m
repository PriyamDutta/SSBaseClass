//
//  UIView+Base.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "UIView+Base.h"

@implementation UIView (Base)

-(void)addShadow:(CGFloat)cornerRadius color:(UIColor *)shadowColor offset:(CGSize)shadowOffset opacity:(CGFloat)shadowOpacity radius:(CGFloat)shadowRadius
{
//    [self.layer setMasksToBounds:NO];
    self.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.layer.bounds cornerRadius:cornerRadius].CGPath;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOffset = shadowOffset;
    self.layer.shadowOpacity = shadowOpacity;
    self.layer.shadowRadius = shadowRadius;
}

-(void)addBorder:(CGFloat)borderWidth color:(UIColor *)borderColor
{
    [self.layer setBorderWidth:borderWidth];
    [self.layer setBorderColor:borderColor.CGColor];
}
@end
