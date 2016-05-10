//
//  UINavigationController+__YBBackTransition.m
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/23.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import "UINavigationController+__YBBackTransition.h"
#import "UIView+__YBBackTransition.h"
#import "UIGestureRecognizer+__YBBackTransition.h"
static NSString * y_UINavigationController___YBBackTransition = @"y_UINavigationController___YBBackTransition";
@implementation UINavigationController (__YBBackTransition)
- (void)set__YBBackTransition_panGestureRecognizer:(UIPanGestureRecognizer *)__YBBackTransition_panGestureRecognizer{
    objc_setAssociatedObject(self, &y_UINavigationController___YBBackTransition, __YBBackTransition_panGestureRecognizer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (UIPanGestureRecognizer *)__YBBackTransition_panGestureRecognizer{
    return objc_getAssociatedObject(self, &y_UINavigationController___YBBackTransition);
}
- (void)__YBBackTransition_viewDidLoad{
    [self __YBBackTransition_viewDidLoad];
    if (!self.__YBBackTransition_panGestureRecognizer && [self.interactivePopGestureRecognizer.delegate isKindOfClass:[UIPercentDrivenInteractiveTransition class]]) {
        
        /******边缘******/
//        UIScreenEdgePanGestureRecognizer * gestureRecognizer = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:NSSelectorFromString(@"handleNavigationTransition:")];
        /******边缘******/
        
        UIPanGestureRecognizer * gestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:NSSelectorFromString(@"handleNavigationTransition:")];
        gestureRecognizer.delegate = self;
        gestureRecognizer.__YBBackTransition_navController = self;
        self.__YBBackTransition_panGestureRecognizer = gestureRecognizer;
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    [self.view addGestureRecognizer:self.__YBBackTransition_panGestureRecognizer];
}
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)recognizer{
    if ([self.transitionCoordinator isAnimated]||
        self.viewControllers.count < 2) {
        return NO;
    }
    CGPoint velocityPoint = [recognizer velocityInView:self.view];
    if(velocityPoint.x <= 0) {
        return NO;
    }
    CGPoint translationPoint = [recognizer translationInView:self.view];
    if (translationPoint.x == 0) {
        translationPoint.x = 0.1f;
    }
    CGFloat ratioValue = fabs(translationPoint.y)/fabs(translationPoint.x);
//    NSLog(@"%f",ratio);
    if ((translationPoint.y>0 && ratioValue>0.5f)||(translationPoint.y<0 && ratioValue>0.5f)) {
        return NO;
    }
    return YES;
}

@end
