//
//  QYMonitorAppDelegate.h
//  Chest
//
//  Created by apple on 2019/3/22.
//  Copyright © 2019 insect. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QYMonitorApp;

@protocol QYMonitorAppDelegate <NSObject>

@optional
/** 进入了后台 */
- (void)isEnterBackground:(QYMonitorApp *)monitor;

/** 进入了前台 */
- (void)isEnterForeground:(QYMonitorApp *)monitor;

@end
