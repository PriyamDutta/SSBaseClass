//
//  SSTextViewTests.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 23/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//
#import "../../Pod/Classes/SSTextView.h"
#import "../../Pod/Classes/UIView+Base.h"

SpecBegin(SSTextViewTests)

__block SSTextView * textView;

beforeAll(^{
    NSDictionary * fontDictionary = @{
                                      @"Font1" : [UIFont fontWithName:@"HelveticaNeue" size:20],
                                      @"Font2" : [UIFont fontWithName:@"HelveticaNeue" size:16]
                                      };
    
    NSDictionary * colorDictionary = @{
                                       @"Color1" : [UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0],
                                       @"Color2" : [UIColor colorWithRed:0.25 green:0.5 blue:1.0 alpha:1.0]
                                       };
    
    textView = [SSTextView new];
    textView.fontDictionary = fontDictionary;
    textView.colorDictionary = colorDictionary;
    textView.fontKey = @"Font1";
    textView.colorKey = @"Color1";
    
    textView.cornerRadius = 10;
    textView.borderWidth = 3;
    textView.borderColor = [UIColor grayColor];
    
    [textView updateView];
});

describe(@"textview theming", ^{
    it(@"ensures font is same", ^{
        expect(textView.font).to.equal([UIFont fontWithName:@"HelveticaNeue" size:20]);
    });
    
    it(@"ensures text color is same", ^{
        expect(textView.textColor).to.equal([UIColor colorWithRed:1.0 green:0.5 blue:0.25 alpha:1.0]);
    });
});

describe(@"corner radius", ^{
    it(@"corner radius must be 10", ^{
        expect(textView.layer.cornerRadius).to.equal(10);
    });
});

describe(@"button border", ^{
    it(@"border width must be 3", ^{
        expect(textView.layer.borderWidth).to.equal(3);
    });
    
    it(@"border color must be gray", ^{
        expect(textView.layer.borderColor).to.equal([UIColor grayColor].CGColor);
    });
});

SpecEnd