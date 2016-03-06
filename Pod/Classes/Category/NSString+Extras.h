//
//  NSString+Extras.h
//  Tripsee
//
//  Created by Shwet Solanki on 30/10/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extras)

-(NSString *)trimmedString;
-(BOOL)isEmpty;
-(CGSize)heightWithMaxWidth:(CGFloat)maxWidth andFont:(UIFont *)font;
-(NSString *)dashIfEmpty;

@end
