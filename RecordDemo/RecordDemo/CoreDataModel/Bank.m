//
//  Bank.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import "Bank.h"
#import "Personnel.h"

@implementation Bank

// Insert code here to add functionality to your managed object subclass

- (NSString *)description{
    return [NSString stringWithFormat:@"<%p>--->银行名称:%@----->银行地址%@",self, self.name,self.address];
}

@end
