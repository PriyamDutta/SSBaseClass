//
//  SSLabelTest.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 23/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//
#import "../../Pod/Classes/SSLabel.h"
#import "../../Pod/Classes/UIView+Base.h"

SpecBegin(SSLabelTests)

__block SSLabel * label;

beforeAll(^{
    NSDictionary * fontDictionary = @{
                            @"Font1" : [UIFont fontWithName:@"HelveticaNeue" size:20],
                            @"Font2" : [UIFont fontWithName:@"HelveticaNeue" size:16]
                            };
    
    NSDictionary * colorDictionary = @{
                             @"Color1" : [UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0],
                             @"Color2" : [UIColor colorWithRed:0.25 green:0.5 blue:1.0 alpha:1.0]
                             };
    
    label = [SSLabel new];
    label.fontDictionary = fontDictionary;
    label.colorDictionary = colorDictionary;
    label.fontKey = @"Font1";
    label.colorKey = @"Color1";
    [label updateView];
});

describe(@"label theming", ^{
    it(@"ensures font is same", ^{
        expect(label.font).to.equal([UIFont fontWithName:@"HelveticaNeue" size:20]);
    });
    
    it(@"ensures text color is same", ^{
        expect(label.textColor).to.equal([UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0]);
    });
});

SpecEnd