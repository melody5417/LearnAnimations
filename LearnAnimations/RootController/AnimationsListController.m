//
//  AnimationsListController.m
//  LearnAnimations
//
//  Created by yiqiwang(王一棋) on 2017/6/6.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "AnimationsListController.h"

@interface AnimationsListController () <UIGestureRecognizerDelegate, UINavigationControllerDelegate>

@end

@implementation AnimationsListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self rootViewControllerSetup];

    [self configNotificationCenter];

    
}

#pragma mark - RootViewController setup.

- (void)rootViewControllerSetup {

    // [IMPORTANT] Enable the Push transitioning.
    self.navigationController.delegate = self;

    // [IMPORTANT] Set the RootViewController's push delegate.
    [self useInteractivePopGestureRecognizer];
}

- (void)useInteractivePopGestureRecognizer {
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

#pragma mark - configNotificationCenter

- (void)configNotificationCenter {
    //TODO
//    self.notificationCenter          = [DefaultNotificationCenter new];
//    self.notificationCenter.delegate = self;
//    [self.notificationCenter addNotificationName:noti_showHomePageTableView];

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleReceivedNotification:)
                                                 name:noti_showHomePageTableView
                                               object:nil];
}

#pragma mark - Notification

- (void)handleReceivedNotification:(NSNotification *)noti {

}

#pragma mark - UINavigationControllerDelegate

//- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
//                                            animationControllerForOperation:(UINavigationControllerOperation)operation
//                                                         fromViewController:(UIViewController *)fromVC
//                                                           toViewController:(UIViewController *)toVC {
//
//};

@end
