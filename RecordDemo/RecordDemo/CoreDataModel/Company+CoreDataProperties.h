//
//  Company+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Company.h"

NS_ASSUME_NONNULL_BEGIN

@interface Company (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *identifier;
@property (nullable, nonatomic, retain) NSSet<Department *> *department;

@end

@interface Company (CoreDataGeneratedAccessors)

- (void)addDepartmentObject:(Department *)value;
- (void)removeDepartmentObject:(Department *)value;
- (void)addDepartment:(NSSet<Department *> *)values;
- (void)removeDepartment:(NSSet<Department *> *)values;

@end

NS_ASSUME_NONNULL_END
