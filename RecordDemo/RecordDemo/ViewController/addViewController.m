//
//  addViewController.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import "addViewController.h"

#import "Department.h"
#import "Personnel.h"
#import "Position.h"
#import "Car.h"
#import "Salary.h"
#import "Bank.h"
#import "Company.h"

@interface addViewController ()

@end

@implementation addViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)setUpCompany:(UIButton *)sender {
    
    Company * companyOne = [Company MR_createEntity ];
    companyOne.identifier = [NSNumber numberWithInt:111111];
    companyOne.name = @"王五的公司";
    //
    Department *departmentone = [Department MR_createEntity];
    departmentone.name = @"技术部";
    
    Position *postionOne = [Position MR_createEntity];
    postionOne.name = @"后台开发";
    Position *postionTwo = [Position MR_createEntity];
    postionTwo.name = @"前端开发";
    Position *postionThree = [Position MR_createEntity];
    postionThree.name = @"测试";
    //
    Salary * salaryOne = [Salary MR_createEntity];
    salaryOne.level = @"后台开发";
    salaryOne.pay = @"10000";
    //
    Salary * salaryTwo = [Salary MR_createEntity];
    salaryTwo.level = @"前端开发";
    salaryTwo.pay = @"12";
    
    Salary * salaryThree = [Salary MR_createEntity];
    salaryThree.level = @"测试部门";
    salaryThree.pay = @"13423";
    
    Personnel * personOne = [Personnel MR_createEntity];
    personOne.name = @"王五一";
    personOne.age = [NSNumber numberWithInt:34];
    personOne.sex = [NSNumber numberWithInt:0];
    personOne.address = @"清河中街100号";
    
    Personnel * personTwo = [Personnel MR_createEntity];
    personTwo.name = @"王五二";
    personTwo.age = [NSNumber numberWithInt:23];
    personTwo.sex = [NSNumber numberWithInt:0];
    personTwo.address = @"海淀军事第九区";
    
    Personnel * personThree = [Personnel MR_createEntity];
    personThree.name = @"王五三";
    personThree.age = [NSNumber numberWithInt:10];
    personThree.sex = [NSNumber numberWithInt:1];
    personThree.address = @"海淀军事第八区";
    
    Car * carOne = [Car MR_createEntity];
    carOne.color = @"红色";
    carOne.name  = @"兰博基尼";
    carOne.price = @"213214214";
    
    Car * carTwo = [Car MR_createEntity];
    carTwo.color = @"蓝色";
    carTwo.name  = @"法拉第";
    carTwo.price = @"345321343142";
    
    Car * carThree = [Car MR_createEntity];
    carThree.color = @"紫色";
    carThree.name  = @"劳斯莱斯";
    carThree.price = @"3453434534";
    
    Bank * bankOne = [Bank MR_createEntity];
    bankOne.name = @"中国建设银行";
    bankOne.address = @"前屯路大街100号";
    
    Bank * bankTwo = [Bank MR_createEntity];
    bankTwo.name = @"中国农业银行";
    bankTwo.address = @"清河中街2323号";
    
    Bank * bankThree = [Bank MR_createEntity];
    bankThree.name = @"中国银行";
    bankThree.address = @"望京西街321号";
    
#pragma mark -
#pragma mark 设置各自的关系
    
    [companyOne addDepartmentObject:departmentone];
    [departmentone addPositions:[NSSet setWithObjects:postionOne,postionTwo,postionThree, nil]];
    [departmentone  addPersonnels:[NSSet setWithArray:@[personOne,personTwo,personThree]]];
    
    [postionOne addPersonnelsObject:personOne];
    postionOne.salary = salaryOne;
    [postionOne addPersonnelsObject:personOne];
    [postionTwo addPersonnelsObject:personTwo];
    postionTwo.salary = salaryTwo;
    [postionTwo addPersonnelsObject:personTwo];
    [postionThree addPersonnelsObject:personThree];
    postionThree.salary = salaryThree;
    [postionThree addPersonnelsObject:personThree];
    //
    personOne.salary = salaryOne;
    personTwo.salary = salaryTwo;
    personThree.salary = salaryThree;
    personOne.bank = bankOne;
    personTwo.bank = bankTwo;
    personThree.bank = bankThree;
    personOne.car = carOne;
    personTwo.car = carTwo;
    personThree.car = carThree;
    
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError * _Nullable error) {
        NSLog(@"保存成功");
    }];
    
    //
}

- (IBAction)addDepartment:(UIButton *)sender {
    
}

- (IBAction)addPosition:(UIButton *)sender {
    
}

- (IBAction)addPerson:(UIButton *)sender {
    
}

- (IBAction)addCar:(UIButton *)sender {
}

- (IBAction)addBank:(UIButton *)sender {
}



@end
