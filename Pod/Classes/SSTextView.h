//
//  SSTextView.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>
#import <SZTextView/SZTextView.h>

IB_DESIGNABLE
@interface SSTextView : SZTextView
//Font and Color Theming
@property (nonatomic) IBInspectable NSString * fontKey;
@property (nonatomic) IBInspectable NSString * colorKey;

@property (nonatomic, strong) NSDictionary * fontDictionary;
@property (nonatomic, strong) NSDictionary * colorDictionary;

//Padding
@property (nonatomic) IBInspectable BOOL removeTopPadding;
@property (nonatomic) IBInspectable BOOL applyPadding;
@property (nonatomic) IBInspectable CGFloat contentInsetX;
@property (nonatomic) IBInspectable CGFloat contentInsetY;

//Corner Radius
@property (nonatomic) IBInspectable CGFloat cornerRadius;

//Border
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable NSString * borderColorKey;
@end
