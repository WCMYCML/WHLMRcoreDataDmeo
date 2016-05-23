//
//  addViewController.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/20.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import "addViewController.h"

#import "Bank.h"
#import "Car.h"
#import "Company.h"
#import "Department.h"
#import "Personnel.h"
#import "Position.h"
#import "Salary.h"

@interface addViewController ()

@end

@implementation addViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)setUpCompany:(UIButton*)sender
{

    Company* companyOne = [Company MR_createEntity];
    companyOne.identifier = [NSNumber numberWithInt:111111];
    companyOne.name = @"王五的公司";
    //*****
    Department* departmentone = [Department MR_createEntity];
    departmentone.name = @"技术部";

    Position* postionOne = [Position MR_createEntity];
    postionOne.name = @"后台开发";
    Position* postionTwo = [Position MR_createEntity];
    postionTwo.name = @"前端开发";
    Position* postionThree = [Position MR_createEntity];
    postionThree.name = @"测试";
    //
    Salary* salaryOne = [Salary MR_createEntity];
    salaryOne.level = @"后台开发";
    salaryOne.pay = @"10000";
    //
    Salary* salaryTwo = [Salary MR_createEntity];
    salaryTwo.level = @"前端开发";
    salaryTwo.pay = @"12";

    Salary* salaryThree = [Salary MR_createEntity];
    salaryThree.level = @"测试部门";
    salaryThree.pay = @"13423";

    Personnel* personOne = [Personnel MR_createEntity];
    personOne.name = @"王五一";
    personOne.age = [NSNumber numberWithInt:34];
    personOne.sex = [NSNumber numberWithInt:0];
    personOne.address = @"清河中街100号";

    Personnel* personTwo = [Personnel MR_createEntity];
    personTwo.name = @"王五二";
    personTwo.age = [NSNumber numberWithInt:23];
    personTwo.sex = [NSNumber numberWithInt:0];
    personTwo.address = @"海淀军事第九区";

    Personnel* personThree = [Personnel MR_createEntity];
    personThree.name = @"王五三";
    personThree.age = [NSNumber numberWithInt:10];
    personThree.sex = [NSNumber numberWithInt:1];
    personThree.address = @"海淀军事第八区";

    Car* carOne = [Car MR_createEntity];
    carOne.color = @"红色";
    carOne.name = @"兰博基尼";
    carOne.price = @"213214214";

    Car* carTwo = [Car MR_createEntity];
    carTwo.color = @"蓝色";
    carTwo.name = @"法拉第";
    carTwo.price = @"345321343142";

    Car* carThree = [Car MR_createEntity];
    carThree.color = @"紫色";
    carThree.name = @"劳斯莱斯";
    carThree.price = @"3453434534";

    Bank* bankOne = [Bank MR_createEntity];
    bankOne.name = @"中国建设银行";
    bankOne.address = @"前屯路大街100号";

    Bank* bankTwo = [Bank MR_createEntity];
    bankTwo.name = @"中国农业银行";
    bankTwo.address = @"清河中街2323号";

    Bank* bankThree = [Bank MR_createEntity];
    bankThree.name = @"中国银行";
    bankThree.address = @"望京西街321号";

#pragma mark -
#pragma mark 设置各自的关系

    [companyOne addDepartmentObject:departmentone];
    [departmentone addPositions:[NSSet setWithObjects:postionOne, postionTwo, postionThree, nil]];
    [departmentone addPersonnels:[NSSet setWithArray:@[ personOne, personTwo, personThree ]]];

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

    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError* _Nullable error) {
        NSLog(@"保存成功");
    }];

    //
}

- (IBAction)addDepartment:(UIButton*)sender
{
    Company* companyOne = [Company MR_findFirstByAttribute:@"identifier" withValue:[NSNumber numberWithInt:111111]];
    Department* departmentone = [Department MR_createEntity];
    departmentone.name = @"销售部门";

    Position* postionOne = [Position MR_createEntity];
    postionOne.name = @"前台妹子";
    Position* postionTwo = [Position MR_createEntity];
    postionTwo.name = @"销售顾问";
    Position* postionThree = [Position MR_createEntity];
    postionThree.name = @"售后服务";
     //
    NSArray* allArray = @[
        @{ @"level" : @"前台妹子",
            @"pay" : @"3231" },
        @{ @"level" : @"售顾问",
            @"pay" : @"213231" },
        @{ @"level" : @"售后服务",
            @"pay" : @"32334" },
    ];
    NSArray* allArrayModel = [Salary MR_importFromArray:allArray];

    //
    
    NSArray* allPersonArrayDict = @[
        @{ @"name" : @"李四一",
            @"age" : @123,
            @"sex" : @1,
            @"address" : @"四川一地",
            @"car" : @{ @"color" : @"紫黑色", @"name" : @"宝马", @"price" : @"1222" } },
        @{ @"name" : @"李四二",
            @"age" : @23,
            @"sex" : @0,
            @"address" : @"四川成都市",
            @"car" : @{ @"color" : @"深蓝色", @"name" : @"奥拓", @"price" : @"122" } },
        @{ @"name" : @"李四三",
            @"age" : @12,
            @"sex" : @0,
            @"address" : @"四川二处",
            @"car" : @{ @"color" : @"棕色", @"name" : @"奔驰E系列跑车", @"price" : @"324234" } },
    ];

    NSArray* allPersonModel = [Personnel MR_importFromArray:allPersonArrayDict];

    Bank* bankOne = [Bank MR_createEntity];
    bankOne.name = @"中国建设银行";
    bankOne.address = @"后屯路34号";

    Bank* bankTwo = [Bank MR_createEntity];
    bankTwo.name = @"中国农业银行";
    bankTwo.address = @"清河前街323号";

    Bank* bankThree = [Bank MR_createEntity];
    bankThree.name = @"中国招商银行";
    bankThree.address = @"未知的地方321号";

#pragma mark -
#pragma mark 设置各自的关系

    [companyOne addDepartmentObject:departmentone];
    [departmentone addPositions:[NSSet setWithObjects:postionOne, postionTwo, postionThree, nil]];
    [departmentone addPersonnels:[NSSet setWithArray:allPersonModel]];

    [postionOne addPersonnelsObject:allPersonModel.firstObject];
    postionOne.salary = allArrayModel.firstObject;

    [postionTwo addPersonnelsObject:allPersonModel[1]];
    postionTwo.salary = [allArrayModel objectAtIndex:1];

    [postionThree addPersonnelsObject:allPersonModel.lastObject];
    postionThree.salary = allArrayModel.lastObject;
    //

    [allPersonModel.firstObject setValue:allArrayModel.firstObject forKey:@"salary"];
    [allPersonModel.firstObject setValue:bankOne forKey:@"bank"];

    [allPersonModel[1] setValue:allArrayModel[1] forKey:@"salary"];
    [allPersonModel[1] setValue:bankTwo forKey:@"bank"];

    [allPersonModel.lastObject setValue:allArrayModel.lastObject forKey:@"salary"];
    [allPersonModel.lastObject setValue:bankThree forKey:@"bank"];

    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError* _Nullable error) {
        NSLog(@"保存成功");
    }];
}

- (IBAction)addPosition:(UIButton*)sender
{
    NSArray * positionArray = [Personnel MR_findAllSortedBy:@"age" ascending:YES];
    for (Personnel* personModel in positionArray) {
        NSLog(@"---->%@---->%@---->%@--->汽车为%@---->银行为：%@",personModel.name,personModel.age,personModel.address,personModel.car,personModel.bank);
    }
}


- (IBAction)addPerson:(UIButton*)sender
{
    NSArray * depemtoyArray = [Department MR_findAll];
    for (Department* model in depemtoyArray ) {
        [model setValue:@"编号10020号" forKey:@"identifier"];
    }
    
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError * _Nullable error) {
        NSLog(@"保存成功！");
    }];
}


- (IBAction)addCar:(UIButton*)sender
{
    NSArray * depemtoyArray = [Department MR_findAll];
    for (Department* model in depemtoyArray ) {
        NSLog(@"得到的数据模型为：%@",model);
    }
    
}

- (IBAction)addBank:(UIButton*)sender
{
}

@end
