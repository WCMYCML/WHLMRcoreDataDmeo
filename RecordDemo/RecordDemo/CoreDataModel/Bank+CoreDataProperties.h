//
//  Bank+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/23.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Bank.h"

NS_ASSUME_NONNULL_BEGIN

@interface Bank (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Personnel *> *personnels;
@property (nullable, nonatomic, retain) BankInfo *bankInfo;

@end

@interface Bank (CoreDataGeneratedAccessors)

- (void)addPersonnelsObject:(Personnel *)value;
- (void)removePersonnelsObject:(Personnel *)value;
- (void)addPersonnels:(NSSet<Personnel *> *)values;
- (void)removePersonnels:(NSSet<Personnel *> *)values;

@end

NS_ASSUME_NONNULL_END
