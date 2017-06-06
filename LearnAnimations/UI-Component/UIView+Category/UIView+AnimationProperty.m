//
//  UIView+AnimationProperty.m
//  LearnAnimations
//
//  Created by yiqiwang(王一棋) on 2017/6/6.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "UIView+AnimationProperty.h"
#import <objc/runtime.h>

@implementation UIView (AnimationProperty)

#pragma mark - Scale.

NSString * const _recognizerScale = @"_recognizerScale";

- (void)setScale:(CGFloat)scale {

    objc_setAssociatedObject(self, (__bridge const void *)(_recognizerScale), @(scale), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.transform = CGAffineTransformMakeScale(scale, scale);
}

- (CGFloat)scale {

    NSNumber *scaleValue = objc_getAssociatedObject(self, (__bridge const void *)(_recognizerScale));
    return scaleValue.floatValue;
}

#pragma mark - Angle.

NSString * const _recognizerAngle = @"_recognizerAngle";

- (void)setAngle:(CGFloat)angle {

    objc_setAssociatedObject(self, (__bridge const void *)(_recognizerAngle), @(angle), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.transform = CGAffineTransformMakeRotation(angle);
}

- (CGFloat)angle {

    NSNumber *angleValue = objc_getAssociatedObject(self, (__bridge const void *)(_recognizerAngle));
    return angleValue.floatValue;
}

@end
