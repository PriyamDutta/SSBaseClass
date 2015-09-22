//
//  SSTextField.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface SSTextField : UITextField
//Font and Color Theming
@property (nonatomic) IBInspectable NSString * fontKey;
@property (nonatomic) IBInspectable NSString * colorKey;

@property (nonatomic, strong) NSDictionary * fontDictionary;
@property (nonatomic, strong) NSDictionary * colorDictionary;

//Text Padding for all modes
@property (nonatomic) IBInspectable CGPoint padding;

//Corner Radius
@property (nonatomic) IBInspectable CGFloat cornerRadius;

//Border
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable UIColor * borderColor;
@end
