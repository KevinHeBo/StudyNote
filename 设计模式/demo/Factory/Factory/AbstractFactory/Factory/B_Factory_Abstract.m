//
//  B_Factory_Abstract.m
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import "B_Factory_Abstract.h"

@implementation B_Factory_Abstract

- (NSObject<X_Product_Abstract> *)createX
{
    return [[BX_Product_Abstract alloc] init];
}
- (NSObject<Y_Product_Abstract> *)createY
{
    return [[BY_Product_Abstract alloc] init];
}

@end
