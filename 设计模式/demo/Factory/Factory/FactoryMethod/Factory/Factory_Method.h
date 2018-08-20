//
//  Factory_Method.h
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product_Method.h"


@protocol Factory_Method <NSObject>

@required
- (NSObject<Product_Method> *)create;

@end
