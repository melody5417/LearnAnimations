//
//  AppDelegate.m
//  LearnAnimations
//
//  Created by yiqiwang(王一棋) on 2017/6/6.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "AppDelegate.h"
#import "AnimationsListController.h"
#import "AnimationsListViewNavigationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    AnimationsListController *viewController = [[AnimationsListController alloc] init];
    AnimationsListViewNavigationController *navigationController = [[AnimationsListViewNavigationController alloc] initWithRootViewController:viewController];

    self.window.rootViewController = navigationController;
    self.window.backgroundColor    = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
