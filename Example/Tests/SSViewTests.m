//
//  SSViewTests.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 23/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//
#import "../../Pod/Classes/SSView.h"
#import "../../Pod/Classes/UIView+Base.h"

SpecBegin(SSViewTests)

__block SSView * view;

beforeAll(^{
    view = [SSView new];
    //CornerRadius
    [view setCornerRadius:10];
    
    //Border
    [view setBorderWidth:3];
    [view setBorderColor:[UIColor grayColor]];
    
    //Shadow
    [view setHasShadow:YES];
    [view setShadowOffset:CGSizeMake(2,3)];
    [view setShadowOpacity:0.75];
    [view setShadowRadius:3];
    
    [view updateView];
});

describe(@"corner radius", ^{
    it(@"corner radius must be 10", ^{
        expect(view.layer.cornerRadius).to.equal(10);
    });
});

describe(@"button border", ^{
    it(@"border width must be 3", ^{
        expect(view.layer.borderWidth).to.equal(3);
    });
    
    it(@"border color must be gray", ^{
        expect(view.layer.borderColor).to.equal([UIColor grayColor].CGColor);
    });
});

describe(@"button shadow", ^{
    it(@"shadow offset should be 2,3", ^{
        expect(view.layer.shadowOffset).to.equal(CGSizeMake(2,3));
    });
    
    it(@"shadow opacity should be 0.75", ^{
        expect(view.layer.shadowOpacity).to.equal(0.75);
    });
    
    it(@"shadow radius should be 3", ^{
        expect(view.layer.shadowRadius).to.equal(3);
    });
});

SpecEnd