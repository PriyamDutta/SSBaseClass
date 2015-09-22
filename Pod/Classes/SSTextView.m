//
//  SSTextView.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSTextView.h"
#import "UIView+Base.h"
@implementation SSTextView

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
        NSString * assertString = [NSString stringWithFormat:@"Invalid Font Key %@",_fontKey];
        NSAssert(self.fontDictionary[_fontKey], assertString);
        [self setFont:self.fontDictionary[_fontKey]];
    }
    
    if(_colorKey)
    {
        NSString * assertString = [NSString stringWithFormat:@"Invalid Color Key %@",_colorKey];
        NSAssert(self.colorDictionary[_colorKey], assertString);
        [self setTextColor:self.colorDictionary[_colorKey]];
    }
    
    if(_removeTopPadding)
    {
        self.textContainerInset = UIEdgeInsetsZero;
        self.textContainer.lineFragmentPadding = 0;
    }
    
    [self.layer setCornerRadius:_cornerRadius];
    [self addBorder:_borderWidth color:_borderColor];
}

@end
