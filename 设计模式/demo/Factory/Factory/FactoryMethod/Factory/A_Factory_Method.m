//
//  A_Factory_Method.m
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import "A_Factory_Method.h"

@implementation A_Factory_Method

- (NSObject<Product_Method> *)create
{
    return [[A_Product_Method alloc] init];
}

@end
