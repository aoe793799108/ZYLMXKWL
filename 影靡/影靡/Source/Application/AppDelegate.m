//
//  AppDelegate.m
//  影靡
//
//  Created by zhouyong on 16/1/15.
//  Copyright © 2016年 zy. All rights reserved.
//

#import "AppDelegate.h"
#import "homePageViewController.h"
#import "chatViewController.h"
#import "findViewController.h"
#import "buyTicketViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UINavigationController * homeNC = [[UINavigationController alloc]initWithRootViewController:[[homePageViewController alloc]init]];
    homeNC.navigationBar.titleTextAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    UINavigationController * buyTicketNC = [[UINavigationController alloc]initWithRootViewController:[[buyTicketViewController alloc]init]];
    buyTicketNC.navigationBar.titleTextAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    UINavigationController * findNC = [[UINavigationController alloc]initWithRootViewController:[[findViewController alloc]init]];
    findNC.navigationBar.titleTextAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    UINavigationController * chatNC = [[UINavigationController alloc]initWithRootViewController:[[chatViewController alloc]init]];
    chatNC.navigationBar.titleTextAttributes=@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    UITabBarController * tabBC = [[UITabBarController alloc]init];
    tabBC.viewControllers = @[homeNC,buyTicketNC,findNC,chatNC];
    tabBC.tabBar.barTintColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
    
    self.window.rootViewController = tabBC;
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
