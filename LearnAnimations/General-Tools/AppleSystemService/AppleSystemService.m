//
//  AppleSystemService.m
//  LearnAnimations
//
//  Created by yiqiwang(王一棋) on 2017/6/6.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "AppleSystemService.h"

@implementation AppleSystemService

+ (UIImage *)launchImage {

    UIImage               *lauchImage      = nil;
    NSString              *viewOrientation = nil;
    CGSize                 viewSize        = [UIScreen mainScreen].bounds.size;
    UIInterfaceOrientation orientation     = [[UIApplication sharedApplication] statusBarOrientation];

    if (orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight) {

        viewOrientation = @"Landscape";

    } else {

        viewOrientation = @"Portrait";
    }

    NSArray *imagesDictionary = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary *dict in imagesDictionary) {

        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]) {

            lauchImage = [UIImage imageNamed:dict[@"UILaunchImageName"]];
        }
    }

    return lauchImage;
}

@end
