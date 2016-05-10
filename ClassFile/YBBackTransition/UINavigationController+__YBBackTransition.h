//
//  UINavigationController+__YBBackTransition.h
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/23.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface UINavigationController (__YBBackTransition)<UIGestureRecognizerDelegate>
@property (nonatomic, strong) UIPanGestureRecognizer * __YBBackTransition_panGestureRecognizer;
-(void)__YBBackTransition_viewDidLoad;
@end
