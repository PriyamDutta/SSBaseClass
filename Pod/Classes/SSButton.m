//
//  SSButton.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSButton.h"
#import "UIView+Base.h"
#import "BaseControl.h"
#import "NSString+Extras.h"
#import "SSTheme.h"

@implementation SSButton

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
    [self updateView];
}

-(void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    [self setup];
    [self updateView];
}

-(void)setup
{
    self.fontDictionary = [[SSTheme currentTheme] fontDictionary];
    self.colorDictionary = [[SSTheme currentTheme] colorDictionary];
}

-(void)updateView
{
    if(_fontKey)
    {
        NSAssert(self.fontDictionary[_fontKey], @"Invalid Font Key %@",_fontKey);
        [self.titleLabel setFont:self.fontDictionary[_fontKey]];
    }
    
    if(_colorKey)
    {
        NSAssert(self.colorDictionary[_colorKey], @"Invalid Color Key %@",_colorKey);
        [self setTitleColor:self.colorDictionary[_colorKey] forState:UIControlStateNormal];
    }
    
    if(_unselectedColorKey)
    {
        NSAssert(self.colorDictionary[_unselectedColorKey], @"Invalid Color Key %@",_unselectedColorKey);
        [self setBackgroundColor:self.colorDictionary[_unselectedColorKey]];
    }
    
    [self.layer setCornerRadius:_cornerRadius];
    
    if(_hasShadow)
    {
        [self addShadow:_cornerRadius color:_shadowColor offset:_shadowOffset opacity:_shadowOpacity radius:_shadowRadius];
    }
    
    [self addBorder:_borderWidth color:_borderColorKey colorDict:self.colorDictionary];
    
    if(_awesomeFontText)
    {
        NSString * text = [self titleForState:UIControlStateNormal];   
        NSMutableAttributedString * attributedString = [BaseControl attributedStringWithAwesomeText:_awesomeFontText text:text font:self.titleLabel.font textColor:[self titleColorForState:UIControlStateNormal] awesomeFontColor:_awesomeFontColor ? : [self titleColorForState:UIControlStateNormal]];
        [self setAttributedTitle:attributedString forState:UIControlStateNormal];
    }
    
    [self invalidateIntrinsicContentSize];
}

-(void)setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    [self updateView];
}

-(void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    if(_selectedColorKey)
    {
        [UIView animateWithDuration:0.20 animations:^{
            if(self.buttonType == UIButtonTypeCustom)
                [self.titleLabel.layer setOpacity:1];
            [self setBackgroundColor:selected ? self.colorDictionary[_selectedColorKey] : self.colorDictionary[_unselectedColorKey]];
        }];
    }
}

-(void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    
    if(_highlightedColorKey)
    {
        [UIView animateWithDuration:0.20 animations:^{
            if(self.buttonType == UIButtonTypeCustom)
                [self.titleLabel.layer setOpacity:highlighted ? 0.5 : 1.0];
            
            if(!highlighted && [self.backgroundColor isEqual:self.colorDictionary[_highlightedColorKey]])
                [self setBackgroundColor:self.colorDictionary[_unselectedColorKey]];
            else if(highlighted)
                [self setBackgroundColor:self.colorDictionary[_highlightedColorKey]];
        }];
    }
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    if (_increaseTappableArea) {
        if (CGRectContainsPoint(CGRectInset(self.bounds, -10, -10), point))
            return YES;
    }
    
    return [super pointInside:point withEvent:event];
}

@end
