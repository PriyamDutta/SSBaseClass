//
//  SSTextFieldTests.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 23/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//
#import "../../Pod/Classes/SSTextField.h"
#import "../../Pod/Classes/UIView+Base.h"

SpecBegin(SSTextFieldTests)

__block SSTextField * textfield;

beforeAll(^{
    NSDictionary * fontDictionary = @{
                                      @"Font1" : [UIFont fontWithName:@"HelveticaNeue" size:20],
                                      @"Font2" : [UIFont fontWithName:@"HelveticaNeue" size:16]
                                      };
    
    NSDictionary * colorDictionary = @{
                                       @"Color1" : [UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0],
                                       @"Color2" : [UIColor colorWithRed:0.25 green:0.5 blue:1.0 alpha:1.0]
                                       };
    
    textfield = [SSTextField new];
    textfield.fontDictionary = fontDictionary;
    textfield.colorDictionary = colorDictionary;
    textfield.fontKey = @"Font1";
    textfield.colorKey = @"Color1";
    
    textfield.cornerRadius = 10;
    textfield.borderWidth = 3;
    textfield.borderColor = [UIColor grayColor];
    
    [textfield updateView];
});

describe(@"textfield theming", ^{
    it(@"ensures font is same", ^{
        expect(textfield.font).to.equal([UIFont fontWithName:@"HelveticaNeue" size:20]);
    });
    
    it(@"ensures text color is same", ^{
        expect(textfield.textColor).to.equal([UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0]);
    });
});

describe(@"corner radius", ^{
    it(@"corner radius must be 10", ^{
        expect(textfield.layer.cornerRadius).to.equal(10);
    });
});

describe(@"button border", ^{
    it(@"border width must be 3", ^{
        expect(textfield.layer.borderWidth).to.equal(3);
    });
    
    it(@"border color must be gray", ^{
        expect(textfield.layer.borderColor).to.equal([UIColor grayColor].CGColor);
    });
});

SpecEnd