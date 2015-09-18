//
//  SSLabel.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface SSLabel : UILabel
//Font and Color Theming
@property (nonatomic) IBInspectable NSString * fontKey;
@property (nonatomic) IBInspectable NSString * colorKey;

@property (nonatomic, strong) NSDictionary * fontDictionary;
@property (nonatomic, strong) NSDictionary * colorDictionary;
@end
