//
//  A_Factory_Abstract.m
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import "A_Factory_Abstract.h"

@implementation A_Factory_Abstract

- (NSObject<X_Product_Abstract> *)createX
{
    return [[AX_Product_Abstract alloc] init];
}
- (NSObject<Y_Product_Abstract> *)createY
{
    return [[AY_Product_Abstract alloc] init];
}

@end
