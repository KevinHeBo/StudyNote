//
//  Factory_Simple.m
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import "Factory_Simple.h"

@implementation Factory_Simple

- (NSObject<Product_Simple> *)createWithType:(ProductType)type
{
    switch (type) {
        case ProductTypeA:
        {return [[A_Product_Simple alloc] init];}
            break;
        case ProductTypeB:
        {return [[B_Product_Simple alloc] init];}
            break;
        default:
            break;
    }
}

@end
