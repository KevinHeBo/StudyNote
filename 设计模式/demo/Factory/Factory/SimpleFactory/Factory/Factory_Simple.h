//
//  Factory_Simple.h
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product_Simple.h"
#import "A_Product_Simple.h"
#import "B_Product_Simple.h"

typedef enum : NSUInteger {
    ProductTypeA = 0,
    ProductTypeB,
} ProductType;

@interface Factory_Simple : NSObject

- (NSObject<Product_Simple> *)createWithType:(ProductType)type;
@end
