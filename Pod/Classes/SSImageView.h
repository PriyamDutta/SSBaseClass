//
//  SSImageView.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#import <UIKit/UIKit.h>

@interface SSImageView : UIImageView

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

//Image as background
@property (nonatomic) IBInspectable UIImage * backgroundImage;

//Gradient
@property (nonatomic) IBInspectable UIColor * gradientStartColor;
@property (nonatomic) IBInspectable CGPoint gradientStartPoint;

@property (nonatomic) IBInspectable UIColor * gradientMidColor;
@property (nonatomic) IBInspectable CGFloat gradientMidLocation;

@property (nonatomic) IBInspectable UIColor * gradientEndColor;
@property (nonatomic) IBInspectable CGPoint gradientEndPoint;


@end
