//
//  UIPercentDrivenInteractiveTransition+__YBBackTransition.m
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/22.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import "UIPercentDrivenInteractiveTransition+__YBBackTransition.h"
#import "UIGestureRecognizer+__YBBackTransition.h"
@implementation UIPercentDrivenInteractiveTransition (__YBBackTransition)
-(void)handleNavigationTransition:(UIPanGestureRecognizer *)recognizer{
    if (recognizer.state == UIGestureRecognizerStateBegan) {
        [recognizer.__YBBackTransition_navController popViewControllerAnimated:YES];
    }
}
@end
