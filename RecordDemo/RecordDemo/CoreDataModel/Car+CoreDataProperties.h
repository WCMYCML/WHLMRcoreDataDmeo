//
//  Car+CoreDataProperties.h
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Car.h"

NS_ASSUME_NONNULL_BEGIN

@interface Car (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *price;
@property (nullable, nonatomic, retain) NSString *color;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) Personnel *personnel;

@end

NS_ASSUME_NONNULL_END
