//
//  ViewController.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/18.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//


#import "ViewController.h"
#import "addViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (IBAction)addButton:(UIButton *)sender {
    addViewController * VC = [[addViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
}


- (IBAction)findButton:(UIButton *)sender {
    
}

@end
