//
//  SSExampleTextField.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 22/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//

#import "SSExampleTextField.h"

@implementation SSExampleTextField
-(void)awakeFromNib
{
    [self commonInit];
    [super awakeFromNib];
}

-(void)prepareForInterfaceBuilder
{
    [self commonInit];
    [super prepareForInterfaceBuilder];
}

-(void)commonInit
{
    self.fontDictionary = @{
                            @"Font1" : [UIFont fontWithName:@"HelveticaNeue" size:20],
                            @"Font2" : [UIFont fontWithName:@"HelveticaNeue" size:16]
                            };
    
    self.colorDictionary = @{
                             @"Color1" : [UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0],
                             @"Color2" : [UIColor colorWithRed:0.25 green:0.5 blue:1.0 alpha:1.0]
                             };
}

@end
