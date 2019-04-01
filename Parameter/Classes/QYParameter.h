//
//  QYParameter.h
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYParameter : NSObject

/** IDFA */
+ (NSString *)IDFA;
/** 内部版本号 */
+ (NSString *)buildVersion;
/** 系统版本 */
+ (NSString *)systemVersion;
/** 是否越狱 */
+ (NSString *)isJailbroken;
/** 设备型号 */
+ (NSString *)iPhoneType;
/** 今日头条公共参数 */
+ (NSMutableDictionary *)TT_BaseParameters;
/** 时间戳 */
+ (double )timestamp;

@end
