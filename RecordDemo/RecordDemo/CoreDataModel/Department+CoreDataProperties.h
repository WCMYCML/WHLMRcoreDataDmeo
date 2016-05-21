//
//  Department+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@interface Department (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSManagedObject *company;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *positions;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *personnels;

@end

@interface Department (CoreDataGeneratedAccessors)

- (void)addPositionsObject:(NSManagedObject *)value;
- (void)removePositionsObject:(NSManagedObject *)value;
- (void)addPositions:(NSSet<NSManagedObject *> *)values;
- (void)removePositions:(NSSet<NSManagedObject *> *)values;

- (void)addPersonnelsObject:(NSManagedObject *)value;
- (void)removePersonnelsObject:(NSManagedObject *)value;
- (void)addPersonnels:(NSSet<NSManagedObject *> *)values;
- (void)removePersonnels:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
