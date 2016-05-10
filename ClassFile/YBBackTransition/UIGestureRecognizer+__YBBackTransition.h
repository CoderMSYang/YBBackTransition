//
//  UIGestureRecognizer+__YBBackTransition.h
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/23.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface UIGestureRecognizer (__YBBackTransition)
@property (nonatomic, assign) UINavigationController *__YBBackTransition_navController;
@end
