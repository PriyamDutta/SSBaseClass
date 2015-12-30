//
//  SSImageView.m
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import "SSImageView.h"
#import "UIView+Base.h"

@interface SSImageView ()
{
    CAGradientLayer * gradientLayer;
}
@end

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
    [self addObserver:self forKeyPath:@"bounds" options:0 context:nil];
    
    if(_hasShadow)
    {
        [self addShadow:_cornerRadius color:_shadowColor offset:_shadowOffset opacity:_shadowOpacity radius:_shadowRadius];
    }
    
    [self addBorder:_borderWidth color:_borderColorKey colorDict:self.colorDictionary];
    
    if(_backgroundImage)
        [self setBackgroundColor:[UIColor colorWithPatternImage:_backgroundImage]];
    
    if(_gradientStartColor && _gradientEndColor)
    {
        NSArray * colors;
        NSArray * locations;
        
        if(_gradientMidColor)
        {
            locations = @[@(0), @(_gradientMidLocation), @(1)];
            colors = @[(id)_gradientStartColor.CGColor, (id)_gradientMidColor.CGColor, (id)_gradientEndColor.CGColor];
        }
        else
        {
            locations = @[@(0),@(1)];
            colors = @[(id)_gradientStartColor.CGColor, (id)_gradientEndColor.CGColor];
        }
        
        gradientLayer = [CAGradientLayer layer];
        gradientLayer.colors = colors;
        gradientLayer.locations = locations;
        gradientLayer.frame = self.bounds;
        
        if(!(CGPointEqualToPoint(_gradientStartPoint, CGPointZero) && CGPointEqualToPoint(_gradientEndPoint, CGPointZero)))
        {
            gradientLayer.startPoint = _gradientStartPoint;
            gradientLayer.endPoint = _gradientEndPoint;
        }
        
        
        [self.layer insertSublayer:gradientLayer atIndex:0];
    }
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (object == self && [keyPath isEqualToString:@"bounds"]) {
        if(_gradientStartColor && _gradientEndColor)
        {
            CGRect frame = CGRectZero;
            frame.size = self.bounds.size;
            [gradientLayer setFrame:frame];
        }
    }
}

-(void)setGradientStartColor:(UIColor *)gradientStartColor
{
    _gradientStartColor = gradientStartColor;
    
    if(gradientLayer)
    {
        NSMutableArray * gradientColors = [gradientLayer.colors mutableCopy];
        [gradientColors replaceObjectAtIndex:0 withObject:(id)gradientStartColor.CGColor];
        [gradientLayer setColors:gradientColors];
    }
}

-(void)setGradientEndColor:(UIColor *)gradientEndColor
{
    _gradientEndColor = gradientEndColor;
    
    if(gradientLayer)
    {
        NSMutableArray * gradientColors = [gradientLayer.colors mutableCopy];
        [gradientColors replaceObjectAtIndex:[gradientColors count] - 1 withObject:(id)gradientEndColor.CGColor];
        [gradientLayer setColors:gradientColors];
    }
}

-(void)setGradientMidColor:(UIColor *)gradientMidColor
{
    _gradientMidColor = gradientMidColor;
    
    if(gradientLayer)
    {
        
    }
}

-(void)dealloc
{
    [self removeObserver:self forKeyPath:@"bounds" context:nil];
}
@end
