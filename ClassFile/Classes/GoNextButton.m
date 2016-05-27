//
//  GoNextButton.m
//  YBBackTransitionDemo
//
//  Created by YangBin-Mac on 16/5/27.
//  Copyright © 2016年 YangBin. All rights reserved.
//

#import "GoNextButton.h"

@implementation GoNextButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(GoNextButton *)initWithFrame:(CGRect)frame andTitle:(NSString *)title andTitleColor:(UIColor *)color{
    if (self = [super init]) {
        self.frame = frame;
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:color forState:UIControlStateNormal];
    }
    return self;
}
@end
