//
//  Factory_Abstract.h
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "X_Product_Abstract.h"
#import "Y_Product_Abstract.h"

@protocol Factory_Abstract <NSObject>

@required
- (NSObject<X_Product_Abstract> *)createX;
- (NSObject<Y_Product_Abstract> *)createY;

@end
