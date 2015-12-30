//
//  SSExampleLabel.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 18/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//

#import "SSExampleLabel.h"

@implementation SSExampleLabel

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
                            @"Font2" : [UIFont fontWithName:@"HelveticaNeue" size:10]
                            };
    
    self.colorDictionary = @{
                             @"Color1" : [UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0],
                             @"Color2" : [UIColor colorWithRed:0.25 green:0.5 blue:1.0 alpha:1.0]
                             };
}

@end
