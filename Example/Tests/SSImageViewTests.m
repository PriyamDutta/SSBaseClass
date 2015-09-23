//
//  SSImageViewTests.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 23/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//
#import "../../Pod/Classes/SSImageView.h"
#import "../../Pod/Classes/UIView+Base.h"

SpecBegin(SSImageViewTests)

__block SSImageView * imageView;

beforeAll(^{
    imageView = [SSImageView new];
    //CornerRadius
    [imageView setCornerRadius:10];
    
    //Border
    [imageView setBorderWidth:3];
    [imageView setBorderColor:[UIColor grayColor]];
    
    //Shadow
    [imageView setHasShadow:YES];
    [imageView setShadowOffset:CGSizeMake(2,3)];
    [imageView setShadowOpacity:0.75];
    [imageView setShadowRadius:3];
    
    [imageView updateView];
});

describe(@"corner radius", ^{
    it(@"corner radius must be 10", ^{
        expect(imageView.layer.cornerRadius).to.equal(10);
    });
});

describe(@"button border", ^{
    it(@"border width must be 3", ^{
        expect(imageView.layer.borderWidth).to.equal(3);
    });
    
    it(@"border color must be gray", ^{
        expect(imageView.layer.borderColor).to.equal([UIColor grayColor].CGColor);
    });
});

describe(@"button shadow", ^{
    it(@"shadow offset should be 2,3", ^{
        expect(imageView.layer.shadowOffset).to.equal(CGSizeMake(2,3));
    });
    
    it(@"shadow opacity should be 0.75", ^{
        expect(imageView.layer.shadowOpacity).to.equal(0.75);
    });
    
    it(@"shadow radius should be 3", ^{
        expect(imageView.layer.shadowRadius).to.equal(3);
    });
});

SpecEnd