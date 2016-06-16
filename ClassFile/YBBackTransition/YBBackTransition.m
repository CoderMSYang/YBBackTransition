//
//  YBBackTransition.m
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/22.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import "YBBackTransition.h"
#import "UIPercentDrivenInteractiveTransition+__YBBackTransition.h"
#import "UIGestureRecognizer+__YBBackTransition.h"
#import "UINavigationController+__YBBackTransition.h"
#import "NSObject+__YBRuntime.h"

@implementation YBBackTransition
+ (void)ybBackTransitionConfig{
    if ([[[UIDevice currentDevice] systemVersion]floatValue]<7.0) {
        return;
    }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
            [self replaceMethodWithClass:[UINavigationController class]
                               andOriSel:@selector(viewDidLoad)
                                andMySel:@selector(__YBBackTransition_viewDidLoad)];
    });
}
@end











