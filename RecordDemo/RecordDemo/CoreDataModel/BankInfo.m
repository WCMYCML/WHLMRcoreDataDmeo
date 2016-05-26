//
//  BankInfo.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/23.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import "BankInfo.h"
#import "Bank.h"

@implementation BankInfo

// Insert code here to add functionality to your managed object subclass

- (NSString *)description{
    return [NSString stringWithFormat:@"<%p> -->inder:%@ --->tel%@",self,self.telephone,self.identifier];
}

@end
