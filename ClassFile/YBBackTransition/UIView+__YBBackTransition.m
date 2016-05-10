//
//  UIView+__YBBackTransition.m
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/26.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import "UIView+__YBBackTransition.h"
#import <objc/runtime.h>
static NSString * y_UIView___YBBackTransition = @"y_UIView___YBBackTransition";
@implementation UIView (__YBBackTransition)
-(void)setDisableYBBackTransition:(BOOL)disableYBBackTransition{
    objc_setAssociatedObject(self, &y_UIView___YBBackTransition, @(disableYBBackTransition), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(BOOL)disableYBBackTransition{
    return [objc_getAssociatedObject(self, &y_UIView___YBBackTransition) boolValue];
}
@end