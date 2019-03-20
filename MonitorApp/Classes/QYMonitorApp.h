//
//  QYMonitorApp.h
//  Chest
//
//  Created by apple on 2019/3/20.
//  Copyright © 2019 insect. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol QYMonitorAppDelegate <NSObject>

@optional
/** 进入了后台 */
- (void)isEnterBackground;

/** 进入了前台 */
- (void)isEnterForeground;

@end

@interface QYMonitorApp : NSObject

@property (nonatomic, weak) id<QYMonitorAppDelegate> delegate;

@end
