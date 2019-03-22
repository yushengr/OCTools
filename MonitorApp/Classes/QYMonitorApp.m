//
//  QYMonitorApp.m
//  Chest
//
//  Created by apple on 2019/3/20.
//  Copyright © 2019 insect. All rights reserved.
//

#import "QYMonitorApp.h"

#import <UIKit/UIKit.h>

@implementation QYMonitorApp

- (instancetype)init {
    self = [super init];
    if (self) {
        [self monitorIsEnterBackground];
    }
    return self;
}

#pragma mark - 监听是否进入后台
- (void)monitorIsEnterBackground {

    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(enterBackground)name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(enterForeground)name:UIApplicationWillEnterForegroundNotification object:nil];
}

- (void)enterBackground {

    UIApplication *app = [UIApplication sharedApplication];
    __block UIBackgroundTaskIdentifier bgTask;
    bgTask = [app beginBackgroundTaskWithExpirationHandler:^{
        dispatch_async(dispatch_get_main_queue(), ^{
            if (bgTask != UIBackgroundTaskInvalid) {
                bgTask = UIBackgroundTaskInvalid;
            }
        });
    }];

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            if (bgTask != UIBackgroundTaskInvalid)  {
                bgTask = UIBackgroundTaskInvalid;
            }
        });
    });

    if ([_delegate respondsToSelector:@selector(isEnterBackground:)]) {
        [_delegate isEnterBackground:self];
    }
}

- (void)enterForeground {

    if ([_delegate respondsToSelector:@selector(isEnterForeground:)]) {
        [_delegate isEnterForeground:self];
    }
}

- (void)removeObserver {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - dealloc
- (void)dealloc {
    [self removeObserver];
}

@end
