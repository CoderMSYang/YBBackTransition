//
//  NSObject+__YBRuntime.h
//  CaYiCaFront
//
//  Created by YangBin-Mac on 15/10/22.
//  Copyright © 2015年 YangBin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <dlfcn.h>
@interface NSObject (__YBRuntime)
+(void)replaceMethodWithClass:(Class)className andOriSel:(SEL)ori_Sel andMySel:(SEL)my_Sel;
@end
