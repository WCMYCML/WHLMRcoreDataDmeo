//
//  AppDelegate.m
//  RecordDemo
//
//  Created by 王浩霖 on 16/5/18.
//  Copyright © 2016年 wcycml.com.cn. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"CordDateOne"];//标准的初始化方法

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
   
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
   
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
    [MagicalRecord cleanUp];
    
}


@end
