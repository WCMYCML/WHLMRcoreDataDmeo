//
//  Personnel.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/23.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Bank, Car, Department, Position, Salary;

NS_ASSUME_NONNULL_BEGIN

@interface Personnel : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "Personnel+CoreDataProperties.h"
