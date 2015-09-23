//
//  SSButtonTests.m
//  SSBaseClass
//
//  Created by Shwet Solanki on 23/09/15.
//  Copyright © 2015 Shwet Solanki. All rights reserved.
//

#import "../../Pod/Classes/SSButton.h"
#import "../../Pod/Classes/UIView+Base.h"

SpecBegin(SSButtonTests)

__block SSButton * button;

beforeAll(^{
    button = [SSButton new];
    //CornerRadius
    [button setCornerRadius:10];
    
    //Border
    [button setBorderWidth:3];
    [button setBorderColor:[UIColor grayColor]];
    
    //Shadow
    [button setHasShadow:YES];
    [button setShadowOffset:CGSizeMake(2,3)];
    [button setShadowOpacity:0.75];
    [button setShadowRadius:3];
    
    //ControlState Background Color
    [button setUnselectedColor:[UIColor greenColor]];
    [button setSelectedColor:[UIColor redColor]];
    [button setHighlightedColor:[UIColor yellowColor]];
    
    [button updateView];
});

describe(@"corner radius", ^{
    it(@"corner radius must be 10", ^{
        expect(button.layer.cornerRadius).to.equal(10);
    });
});

describe(@"button border", ^{
    it(@"border width must be 3", ^{
        expect(button.layer.borderWidth).to.equal(3);
    });
    
    it(@"border color must be gray", ^{
        expect(button.layer.borderColor).to.equal([UIColor grayColor].CGColor);
    });
});

describe(@"button shadow", ^{
    it(@"shadow offset should be 2,3", ^{
        expect(button.layer.shadowOffset).to.equal(CGSizeMake(2,3));
    });
    
    it(@"shadow opacity should be 0.75", ^{
        expect(button.layer.shadowOpacity).to.equal(0.75);
    });
    
    it(@"shadow radius should be 3", ^{
        expect(button.layer.shadowRadius).to.equal(3);
    });
});

describe(@"button control state background color", ^{
    it(@"unselected color should be green", ^{
        button.selected = NO;
        expect(button.backgroundColor).to.equal([UIColor greenColor]);
    });
    
    it(@"selected color should be red", ^{
        button.selected = YES;
        expect(button.backgroundColor).to.equal([UIColor redColor]);
    });
    
    it(@"highlighted color should be yellow", ^{
        button.selected = NO;
        button.highlighted = YES;
        expect(button.backgroundColor).to.equal([UIColor yellowColor]);
    });
});

SpecEnd
