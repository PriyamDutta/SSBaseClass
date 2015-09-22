//
//  SSImageView.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>

@interface SSImageView : UIImageView

//Corner Radius
@property (nonatomic) IBInspectable CGFloat cornerRadius;

//Border
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable UIColor * borderColor;

//Shadow
@property (nonatomic) IBInspectable BOOL hasShadow;
@property (nonatomic) IBInspectable CGSize shadowOffset;
@property (nonatomic) IBInspectable UIColor * shadowColor;
@property (nonatomic) IBInspectable CGFloat shadowOpacity;
@property (nonatomic) IBInspectable CGFloat shadowRadius;

@end
