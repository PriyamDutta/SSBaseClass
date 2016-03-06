//
//  NSAttributedString+Extras.m
//  Pods
//
//  Created by Shwet Solanki on 06/12/15.
//
//

#import "NSAttributedString+Extras.h"

@implementation NSAttributedString (Extras)

-(CGSize)heightWithMaxWidth:(CGFloat)maxWidth
{
    return [self boundingRectWithSize:CGSizeMake(maxWidth, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size;
}

@end
