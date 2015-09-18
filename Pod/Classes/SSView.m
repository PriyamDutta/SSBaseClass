//
//  SSView.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSView.h"
#import "UIView+Base.h"

@implementation SSView

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self updateView];
}

-(void)prepareForInterfaceBuilder
{
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

@end
