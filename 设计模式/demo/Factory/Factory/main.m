//
//  main.m
//  Factory
//
//  Created by KEVIN on 2018/7/17.
//  Copyright © 2018年 KEVIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factory_Simple.h"
#import "Factory_Method.h"
#import "A_Factory_Abstract.h"
#import "B_Factory_Abstract.h"


/** A工厂(工厂方法)  */
static char *const a_factory_method = "A_Factory_Method";
/** B工厂(工厂方法)  */
static char *const b_factory_method = "B_Factory_Method";
/** A工厂(抽象工厂) */
static char *const a_factory_abstract = "A_Factory_Abstract";
/** B工厂(抽象工厂)  */
static char *const b_factory_abstract = "B_Factory_Abstract";


void simple_factory(){
    Factory_Simple *factory = [[Factory_Simple alloc] init];
    id <Product_Simple> product = [factory createWithType:ProductTypeA];
    [product desc];
}

void factory_method(char *cls){
    id <Factory_Method> factory = [[NSClassFromString([NSString stringWithUTF8String:cls]) alloc] init];
    id <Product_Method> product = [factory create];
    [product desc];
}

/** X产品的生产 */
void x_abstract_factory(char *factory_cls){
    id <Factory_Abstract> factory = [[NSClassFromString([NSString stringWithUTF8String:factory_cls]) alloc] init];
    id <X_Product_Abstract> product = [factory createX];
    [product desc];
}

/** Y产品的生产 */
void y_abstract_factory(char *factory_cls){
    id <Factory_Abstract> factory = [[NSClassFromString([NSString stringWithUTF8String:factory_cls]) alloc] init];
    id <Y_Product_Abstract> product = [factory createY];
    [product desc];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        /*
         工厂模式（简单工厂、工厂方法、抽象工厂）
         
            1.简单工厂
                (1)一个工厂类，多个产品类。
                (2)根据传入类型来实例产品。
                (3)因为在每次有增加产品的需求时，需要新增具体产品类并且都要在原有的工厂类里修改逻辑，所以违背“开闭原则”。
            eg：如打印结果，A工厂生产A产品。A工厂也生产B产品。
         
            2.工厂方法
                (1)一个工厂类，一个产品类，（工厂<-->产品）一一对应。
                (2)使用不同工厂类来实例对应产品。
                (3)每次新增产品，新增对应的具体产品类和具体工厂类即可，不修改抽象工厂类原有逻辑，符合“开闭原则”。
            eg：如打印结果，A工厂只生产A产品。B工厂只生产B产品。
         
            3.抽象工厂
                (1)多个工厂类，多个产品类，(工厂<-->产品)，多对多关系。
                (2)使用不同工厂类来实例不同的产品。
                (3)每次新增产品，需要新增具体工厂类，新增抽象产品类，新增具体产品类，以及修改抽象工厂类的逻辑，违背“开闭原则”。
            eg：如打印结果，A工厂可以生产X产品，也可以生产Y产品。B工厂可以生产X产品，也可以生产Y产品。
         */
        
        simple_factory();
        
        factory_method(a_factory_method);
        factory_method(b_factory_method);
        
        x_abstract_factory(a_factory_abstract);
        y_abstract_factory(a_factory_abstract);
        
        x_abstract_factory(b_factory_abstract);
        y_abstract_factory(b_factory_abstract);
        
    }
    return 0;
}
