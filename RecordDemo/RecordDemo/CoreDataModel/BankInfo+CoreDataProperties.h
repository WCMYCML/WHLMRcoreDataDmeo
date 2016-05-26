//
//  BankInfo+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/23.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "BankInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface BankInfo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *telephone;
@property (nullable, nonatomic, retain) NSString *identifier;
@property (nullable, nonatomic, retain) Bank *bank;

@end

NS_ASSUME_NONNULL_END
