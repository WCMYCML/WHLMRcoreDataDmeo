//
//  Salary+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Salary.h"

NS_ASSUME_NONNULL_BEGIN

@interface Salary (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *level;
@property (nullable, nonatomic, retain) NSString *pay;
@property (nullable, nonatomic, retain) Position *position;
@property (nullable, nonatomic, retain) NSSet<Personnel *> *personnels;

@end

@interface Salary (CoreDataGeneratedAccessors)

- (void)addPersonnelsObject:(Personnel *)value;
- (void)removePersonnelsObject:(Personnel *)value;
- (void)addPersonnels:(NSSet<Personnel *> *)values;
- (void)removePersonnels:(NSSet<Personnel *> *)values;

@end

NS_ASSUME_NONNULL_END
