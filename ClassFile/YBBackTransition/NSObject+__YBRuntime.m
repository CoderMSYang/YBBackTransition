//
//  NSObject+__YBRuntime.m
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/22.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import "NSObject+__YBRuntime.h"

@implementation NSObject (__YBRuntime)
+(void)replaceMethodWithClass:(Class)className
                    andOriSel:(SEL)ori_Sel
                     andMySel:(SEL)my_Sel{
        Method ori_Method = class_getInstanceMethod(className, ori_Sel);
        Method my_Method = class_getInstanceMethod(className, my_Sel);
        if (!ori_Method) {
            ori_Method = class_getClassMethod(className, ori_Sel);
            my_Method = class_getClassMethod(className, my_Sel);
        }
        if (class_addMethod(className, ori_Sel,method_getImplementation(my_Method), method_getTypeEncoding(my_Method))) {
            method_setImplementation(my_Method, method_getImplementation(ori_Method));
        }else{
            method_exchangeImplementations(ori_Method, my_Method);
        }
}
@end
