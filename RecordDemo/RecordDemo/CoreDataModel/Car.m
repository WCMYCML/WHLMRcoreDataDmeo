//
//  Car.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import "Car.h"
#import "Personnel.h"

@implementation Car

// Insert code here to add functionality to your managed object subclass


- (NSString *)description{
    return [NSString stringWithFormat:@"颜色：%@，价格：%@，车型号：%@",self.price,self.color,self.name];
}

@end
