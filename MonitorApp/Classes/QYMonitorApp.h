//
//  QYMonitorApp.h
//  Chest
//
//  Created by apple on 2019/3/20.
//  Copyright © 2019 insect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYMonitorAppDelegate.h"

@interface QYMonitorApp : NSObject

@property (nonatomic, weak) id<QYMonitorAppDelegate> delegate;

/** 移除监听 */
- (void)removeObserver;

@end
