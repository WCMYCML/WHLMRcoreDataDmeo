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
    
    //获取对应路径方便查看数据库等信息
    NSArray *pathsDocument = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *pathDocument = [pathsDocument objectAtIndex:0];
    NSLog(@"path: -----》%@", pathDocument);
    //获取Cache目录
    NSArray *pathsCache = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *pathCache = [pathsCache objectAtIndex:0];
    NSLog(@"cache ------->%@", pathCache);
    //获取Library目录
    NSArray *pathsLibrary = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *pathLibrary = [pathsLibrary objectAtIndex:0];
    NSLog(@"library --------->%@", pathLibrary);
    //获取本应用程序的临时目录
    NSString *temp = NSTemporaryDirectory();
    NSLog(@"temp: -----------> %@", temp);


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
