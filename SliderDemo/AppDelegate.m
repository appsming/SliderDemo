//
//  AppDelegate.m
//  SliderDemo
//
//  Created by tao song on 17/8/6.
//  Copyright © 2017年 com.wxkj. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "LeftViewController.h"

#import "TestMainViewController.h"

#import "ABCMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


-(void)createMenuView {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MainViewController *mainViewController = (MainViewController *)[storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    LeftViewController *leftViewController = (LeftViewController *)[storyboard instantiateViewControllerWithIdentifier:@"LeftViewController"];
    
//    TestMainViewController  *mainViewControler = [[TestMainViewController alloc] init];
//   
//    ABCMainViewController  *leftViewController = [[ABCMainViewController alloc] init];
//    
    
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:mainViewController];
   
    leftViewController.mainViewControler = nvc;
    
    /************ 控件外观设置 **************/
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
                                                         forBarMetrics:UIBarMetricsDefault];
    NSDictionary *navbarTitleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    [[UINavigationBar appearance] setTitleTextAttributes:navbarTitleTextAttributes];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor orangeColor]];
//    ExSlideMenuController *slideMenuController = [[ExSlideMenuController alloc] initWithMainViewController:nvc leftMenuViewController:leftViewController rightMenuViewController:nil];
    
       SlideMenuController *slideMenuController = [[SlideMenuController alloc] initWithMainViewController:nvc leftMenuViewController:leftViewController rightMenuViewController:nil];

    
    slideMenuController.automaticallyAdjustsScrollViewInsets = YES;
    slideMenuController.delegate = mainViewController;
    self.window.backgroundColor = [UIColor colorWithRed:236.0 green:238.0 blue:241.0 alpha:1.0];
    self.window.rootViewController = slideMenuController;
    [self.window makeKeyWindow];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self createMenuView];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
