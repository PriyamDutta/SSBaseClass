//
//  SSLabel.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSLabel.h"

@implementation SSLabel

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
    
    [self invalidateIntrinsicContentSize];
}

@end
