//
//  SSButton.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSButton.h"
#import "UIView+Base.h"

@implementation SSButton

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self updateView];
}

-(void)prepareForInterfaceBuilder
{
    [super prepareForInterfaceBuilder];
    [self updateView];
}

-(void)updateView
{
    [self.layer setCornerRadius:_cornerRadius];
    
    if(_hasShadow)
    {
        [self addShadow:_cornerRadius color:_shadowColor offset:_shadowOffset opacity:_shadowOpacity radius:_shadowRadius];
    }
    
    [self addBorder:_borderWidth color:_borderColor];
}

-(void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    if(_selectedColor)
    {
        [UIView animateWithDuration:0.20 animations:^{
            if(self.buttonType == UIButtonTypeCustom)
                [self.titleLabel.layer setOpacity:1];
            [self setBackgroundColor:selected ? _selectedColor : _unselectedColor];
        }];
    }
}

-(void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    
    if(_highlightedColor)
    {
        [UIView animateWithDuration:0.20 animations:^{
            if(self.buttonType == UIButtonTypeCustom)
                [self.titleLabel.layer setOpacity:highlighted ? 0.5 : 1.0];
            [self setBackgroundColor:highlighted ? _highlightedColor : _unselectedColor];
        }];
    }
}

@end
