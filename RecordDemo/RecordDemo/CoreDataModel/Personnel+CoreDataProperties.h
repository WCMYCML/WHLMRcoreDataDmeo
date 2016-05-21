//
//  Personnel+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Personnel.h"

NS_ASSUME_NONNULL_BEGIN

@interface Personnel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *age;
@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) NSNumber *sex;
@property (nullable, nonatomic, retain) NSManagedObject *position;
@property (nullable, nonatomic, retain) NSManagedObject *salary;
@property (nullable, nonatomic, retain) NSManagedObject *car;
@property (nullable, nonatomic, retain) Department *department;
@property (nullable, nonatomic, retain) NSManagedObject *bank;

@end

NS_ASSUME_NONNULL_END
