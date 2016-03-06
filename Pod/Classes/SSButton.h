//
//  SSButton.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface SSButton : UIButton
//Font and Color Theming
@property (nonatomic) IBInspectable NSString * fontKey;
@property (nonatomic) IBInspectable NSString * colorKey;

@property (nonatomic, strong) NSDictionary * fontDictionary;
@property (nonatomic, strong) NSDictionary * colorDictionary;

//Corner Radius
@property (nonatomic) IBInspectable CGFloat cornerRadius;

//Border
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable NSString * borderColorKey;

//Shadow
@property (nonatomic) IBInspectable BOOL hasShadow;
@property (nonatomic) IBInspectable CGSize shadowOffset;
@property (nonatomic) IBInspectable UIColor * shadowColor;
@property (nonatomic) IBInspectable CGFloat shadowOpacity;
@property (nonatomic) IBInspectable CGFloat shadowRadius;

//UIControlState Backgroundcolors
@property (nonatomic) IBInspectable NSString * unselectedColorKey;
@property (nonatomic) IBInspectable NSString * highlightedColorKey;
@property (nonatomic) IBInspectable NSString * selectedColorKey;

//Tappable Area
@property (nonatomic) IBInspectable BOOL increaseTappableArea;

//Font Awesome
@property (nonatomic, strong) IBInspectable NSString * awesomeFontText;
@property (nonatomic, strong) IBInspectable UIColor * awesomeFontColor;

@end
