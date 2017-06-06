//
//  AnimationsListViewNavigationController.m
//  LearnAnimations
//
//  Created by yiqiwang(王一棋) on 2017/6/6.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "AnimationsListViewNavigationController.h"
#import "AppleSystemService.h"
#import "UIView+AnimationProperty.h"

@interface AnimationsListViewNavigationController ()

@end

@implementation AnimationsListViewNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];

    // LaunchImage
    UIImageView *iconImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    iconImageView.image        = [AppleSystemService launchImage];
    [self.view addSubview:iconImageView];

    // Do animation
    [UIView animateKeyframesWithDuration:1.f delay:2.f options:0 animations:^{

        iconImageView.scale = 1.2f;
        iconImageView.alpha = 0.f;

    } completion:^(BOOL finished) {

        // TODO
        [[NSNotificationCenter defaultCenter] postNotificationName:noti_showHomePageTableView
                                                            object:nil];
//        [DefaultNotificationCenter postEventToNotificationName:noti_showHomePageTableView object:nil];
        [iconImageView removeFromSuperview];
    }];
}

@end
