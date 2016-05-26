//
//  Department+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/23.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@interface Department (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *identifier;
@property (nullable, nonatomic, retain) Company *company;
@property (nullable, nonatomic, retain) NSSet<Personnel *> *personnels;
@property (nullable, nonatomic, retain) NSSet<Position *> *positions;

@end

@interface Department (CoreDataGeneratedAccessors)

- (void)addPersonnelsObject:(Personnel *)value;
- (void)removePersonnelsObject:(Personnel *)value;
- (void)addPersonnels:(NSSet<Personnel *> *)values;
- (void)removePersonnels:(NSSet<Personnel *> *)values;

- (void)addPositionsObject:(Position *)value;
- (void)removePositionsObject:(Position *)value;
- (void)addPositions:(NSSet<Position *> *)values;
- (void)removePositions:(NSSet<Position *> *)values;

@end

NS_ASSUME_NONNULL_END
