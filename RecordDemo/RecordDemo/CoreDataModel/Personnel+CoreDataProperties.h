//
//  Personnel+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/23.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Personnel.h"

NS_ASSUME_NONNULL_BEGIN

@interface Personnel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) NSNumber *age;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *sex;
@property (nullable, nonatomic, retain) Bank *bank;
@property (nullable, nonatomic, retain) Car *car;
@property (nullable, nonatomic, retain) Department *department;
@property (nullable, nonatomic, retain) Position *position;
@property (nullable, nonatomic, retain) Salary *salary;

@end

NS_ASSUME_NONNULL_END
