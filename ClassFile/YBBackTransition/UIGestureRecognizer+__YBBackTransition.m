//
//  UIGestureRecognizer+__YBBackTransition.m
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/23.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import "UIGestureRecognizer+__YBBackTransition.h"
static NSString * y_UIGestureRecognizer___YBBackTransition = @"y_UIGestureRecognizer___YBBackTransition";
@implementation UIGestureRecognizer (__YBBackTransition)
-(void)set__YBBackTransition_navController:(UINavigationController *)__YBBackTransition_NavController{
    objc_setAssociatedObject(self, &y_UIGestureRecognizer___YBBackTransition, __YBBackTransition_NavController, OBJC_ASSOCIATION_ASSIGN);
}
-(UIViewController *)__YBBackTransition_navController{
    return objc_getAssociatedObject(self, &y_UIGestureRecognizer___YBBackTransition);
}
@end
