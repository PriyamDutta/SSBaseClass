//
//  SSLabel.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSLabel.h"
#import "UIView+Base.h"
#import "BaseControl.h"
#import "NSString+Extras.h"

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
    
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:_cornerRadius];
    [self addBorder:_borderWidth color:_borderColorKey colorDict:self.colorDictionary];
    
    if(_awesomeFontText)
    {
        UIFont * awesomeFont = [BaseControl fontAwesomeWithSize:self.font.pointSize];
        NSString * text = self.text;
        NSMutableAttributedString * attributedString = [BaseControl attributedStringWithAwesomeText:_awesomeFontText text:text font:self.font textColor:self.textColor awesomeFontColor:self.textColor];
        [self setAttributedText:attributedString];
    }
    
    [self invalidateIntrinsicContentSize];
}

-(void)setText:(NSString *)text
{
    [super setText:text];
    [self updateView];
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, UIEdgeInsetsMake(self.contentInsetY, self.contentInsetX, self.contentInsetY, self.contentInsetX))];
}

-(CGSize)intrinsicContentSize
{
    CGSize contentSize = [super intrinsicContentSize];
    contentSize.width += (self.contentInsetX * 2);
    contentSize.height += (self.contentInsetY * 2);
    return contentSize;
}

@end
