//
//  SSView.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface SSView : UIView
//Corner Radius
@property (nonatomic) IBInspectable CGFloat cornerRadius;

//Shadow
@property (nonatomic) IBInspectable BOOL hasShadow;
@property (nonatomic) IBInspectable CGSize shadowOffset;
@property (nonatomic) IBInspectable UIColor * shadowColor;
@property (nonatomic) IBInspectable CGFloat shadowOpacity;
@property (nonatomic) IBInspectable CGFloat shadowRadius;

@end
