//
//  B_Factory_Method.m
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import "B_Factory_Method.h"

@implementation B_Factory_Method

- (NSObject<Product_Method> *)create
{
    return [[B_Product_Method alloc] init];
}

@end
