//
//  SSImageView.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSImageView.h"
#import "UIView+Base.h"

@implementation SSImageView

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

@end
