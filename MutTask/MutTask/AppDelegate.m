//
//  AppDelegate.m
//  MutTask
//
//  Created by 周景隆 on 15/10/9.
//  Copyright © 2015年 周景隆. All rights reserved.
//

#import "AppDelegate.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //create window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //create UITabBarView
    UITabBarController *tab=[[UITabBarController alloc] init];

    
    self.window.rootViewController=tab;
    
    
  
    
    FirstViewController *tb1=[[FirstViewController alloc]init];
    tb1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"动客" image:[[UIImage imageNamed:@"share"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"share_selected"]];
   
    
    SecViewController *tb2=[[SecViewController alloc]init];
    tb2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"动场" image:[[UIImage imageNamed:@"office"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"office_selected"]];
  
    
    ThirdViewController *tb3=[[ThirdViewController alloc]init];
    tb3.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:[[UIImage imageNamed:@"chat"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ] selectedImage:[UIImage imageNamed:@"chat_selected"]];
   
    
    
    FourthViewController *tb4=[[FourthViewController alloc]init];
    tb4.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我动" image:[[UIImage imageNamed:@"user"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[UIImage imageNamed:@"user_selected"]];
    
  
    [tb3.tabBarController.tabBar showBadgeOnItemIndex:2];
 
   
    
    [self.window makeKeyAndVisible ];
    tab.viewControllers=@[[self setNavbarAttr:tb1],[self setNavbarAttr:tb2],[self setNavbarAttr:tb3],[self setNavbarAttr :tb4]];
    
    
 
  //  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
   
   // [self preferredStatusBarStyle];
    
    return YES;
}
-(UINavigationController *) setNavbarAttr:(UIViewController *)tb{
    //UIColor *color=[UIColor colorWithRed:93/255.0 green:163/255.0 blue:244/255.0 alpha:0.8];
     UINavigationController *nav0=[[UINavigationController alloc]initWithRootViewController:tb];
    tb.view.backgroundColor=[UIColor groupTableViewBackgroundColor];
    tb.title=tb.tabBarItem.title;
    [tb.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} ];
    [tb.navigationController.navigationBar setBackgroundImage :[UIImage imageNamed:@"nav_top"] forBarMetrics:UIBarMetricsDefault];
    return nav0;
    
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
