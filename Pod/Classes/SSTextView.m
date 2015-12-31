//
//  SSTextView.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSTextView.h"
#import "UIView+Base.h"
#import "SSTheme.h"

@implementation SSTextView

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
        [self setFont:self.fontDictionary[_fontKey]];
    }
    
    if(_colorKey)
    {
        NSAssert(self.colorDictionary[_colorKey], @"Invalid Color Key %@",_colorKey);
        [self setTextColor:self.colorDictionary[_colorKey]];
    }
    
    if(_removeTopPadding)
    {
        self.textContainerInset = UIEdgeInsetsZero;
        self.textContainer.lineFragmentPadding = 0;
    }
    
    if(_applyPadding)
    {
        self.textContainerInset = UIEdgeInsetsMake(_contentInsetY, _contentInsetX, _contentInsetY, _contentInsetX);
    }
    
    [self.layer setCornerRadius:_cornerRadius];
    [self addBorder:_borderWidth color:_borderColorKey colorDict:self.colorDictionary];
}

@end
