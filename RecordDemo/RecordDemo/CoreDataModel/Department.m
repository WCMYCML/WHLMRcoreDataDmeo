//
//  Department.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/23.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import "Department.h"
#import "Company.h"
#import "Personnel.h"
#import "Position.h"

@implementation Department

- (NSString *)description{
    return [NSString stringWithFormat:@"<%p> ---》名字为：%@ 标示为：%@",self,self.name,self.identifier];
}

@end
