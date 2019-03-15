//
//  QYParameter.m
//  Chest
//
//  Created by apple on 2019/3/12.
//  Copyright © 2019 insect. All rights reserved.
//

#import "QYParameter.h"

#import <AdSupport/AdSupport.h>
#import <UIKit/UIKit.h>
#import <sys/utsname.h>

@implementation QYParameter

+ (NSString *)IDFA {
    return [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
}

+ (NSString *)buildVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

+ (NSString *)systemVersion {
    return [[UIDevice currentDevice] systemVersion];
}

+ (NSString *)isJailbroken {

    NSString *jailbroken = @"0";
    NSString *cydiaPath = @"/Applications/Cydia.app";
    NSString *aptPath = @"/private/var/lib/apt/";
    if ([[NSFileManager defaultManager] fileExistsAtPath:cydiaPath]) {
        jailbroken = @"1";
    }
    if ([[NSFileManager defaultManager] fileExistsAtPath:aptPath]) {
        jailbroken = @"1";
    }
    return jailbroken;
}

+ (NSString *)iPhoneType {

    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding]; if([platform isEqualToString:@"iPhone1,1"]) return @"iPhone 2G"; if([platform isEqualToString:@"iPhone1,2"]) return @"iPhone 3G"; if([platform isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS"; if([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4"; if([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4"; if([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4"; if([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4S"; if([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5"; if([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5"; if([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c"; if([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c"; if([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s"; if([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s"; if([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus"; if([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6"; if([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s"; if([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus"; if([platform isEqualToString:@"iPhone8,4"]) return @"iPhone SE"; if([platform isEqualToString:@"iPhone9,1"]) return @"iPhone 7"; if([platform isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus"; if([platform isEqualToString:@"iPhone10,1"]) return@"iPhone 8"; if([platform isEqualToString:@"iPhone10,4"]) return@"iPhone 8"; if([platform isEqualToString:@"iPhone10,2"]) return@"iPhone 8 Plus"; if([platform isEqualToString:@"iPhone10,5"]) return@"iPhone 8 Plus"; if([platform isEqualToString:@"iPhone10,3"]) return@"iPhone X"; if([platform isEqualToString:@"iPhone10,6"]) return@"iPhone X"; if([platform isEqualToString:@"iPhone11,2"]) return@"iPhone XS"; if([platform isEqualToString:@"iPhone11,4"]) return@"iPhone XS Max"; if([platform isEqualToString:@"iPhone11,6"]) return@"iPhone XS Max"; if([platform isEqualToString:@"iPhone11,8"]) return@"iPhone XR"; if([platform isEqualToString:@"iPod1,1"]) return@"iPod Touch 1G"; if([platform isEqualToString:@"iPod2,1"]) return@"iPod Touch 2G"; if([platform isEqualToString:@"iPod3,1"]) return@"iPod Touch 3G"; if([platform isEqualToString:@"iPod4,1"]) return@"iPod Touch 4G"; if([platform isEqualToString:@"iPod5,1"]) return@"iPod Touch 5G"; if([platform isEqualToString:@"iPad1,1"]) return@"iPad 1G"; if([platform isEqualToString:@"iPad2,1"]) return@"iPad 2"; if([platform isEqualToString:@"iPad2,2"]) return@"iPad 2"; if([platform isEqualToString:@"iPad2,3"]) return@"iPad 2"; if([platform isEqualToString:@"iPad2,4"]) return@"iPad 2"; if([platform isEqualToString:@"iPad2,5"]) return@"iPad Mini 1G"; if([platform isEqualToString:@"iPad2,6"]) return@"iPad Mini 1G"; if([platform isEqualToString:@"iPad2,7"]) return@"iPad Mini 1G"; if([platform isEqualToString:@"iPad3,1"]) return@"iPad 3"; if([platform isEqualToString:@"iPad3,2"]) return@"iPad 3"; if([platform isEqualToString:@"iPad3,3"]) return@"iPad 3"; if([platform isEqualToString:@"iPad3,4"]) return@"iPad 4"; if([platform isEqualToString:@"iPad3,5"]) return@"iPad 4"; if([platform isEqualToString:@"iPad3,6"]) return@"iPad 4"; if([platform isEqualToString:@"iPad4,1"]) return@"iPad Air"; if([platform isEqualToString:@"iPad4,2"]) return@"iPad Air"; if([platform isEqualToString:@"iPad4,3"]) return@"iPad Air"; if([platform isEqualToString:@"iPad4,4"]) return@"iPad Mini 2G"; if([platform isEqualToString:@"iPad4,5"]) return@"iPad Mini 2G"; if([platform isEqualToString:@"iPad4,6"]) return@"iPad Mini 2G"; if([platform isEqualToString:@"iPad4,7"]) return@"iPad Mini 3"; if([platform isEqualToString:@"iPad4,8"]) return@"iPad Mini 3"; if([platform isEqualToString:@"iPad4,9"]) return@"iPad Mini 3"; if([platform isEqualToString:@"iPad5,1"]) return@"iPad Mini 4"; if([platform isEqualToString:@"iPad5,2"]) return@"iPad Mini 4"; if([platform isEqualToString:@"iPad5,3"]) return@"iPad Air 2"; if([platform isEqualToString:@"iPad5,4"]) return@"iPad Air 2"; if([platform isEqualToString:@"iPad6,3"]) return@"iPad Pro 9.7"; if([platform isEqualToString:@"iPad6,4"]) return@"iPad Pro 9.7"; if([platform isEqualToString:@"iPad6,7"]) return@"iPad Pro 12.9"; if([platform isEqualToString:@"iPad6,8"]) return@"iPad Pro 12.9"; if([platform isEqualToString:@"i386"]) return@"iPhone Simulator"; if([platform isEqualToString:@"x86_64"]) return@"iPhone Simulator"; return platform;
}

+ (NSMutableDictionary *)TT_BaseParameters {

    NSDictionary *parameters = @{
                                 @"version_code": @"7.0.9",
                                 @"tma_jssdk_version": @"1.10.6.4",
                                 @"app_name": @"news_article",
                                 @"vid": @"6095FCC3-881F-4DB9-8135-88945F9D7E37",
                                 @"device_id": @"40453770071",
                                 @"channel": @"App Store",
                                 @"resolution": @"1242*2208",
                                 @"aid": @"13",
                                 @"ab_feature": @"z1",
                                 @"update_version_code": @"70901",
                                 @"idfv": @"6095FCC3-881F-4DB9-8135-88945F9D7E37",
                                 @"ac": @"WIFI",
                                 @"os_version": @"12.1.5",
                                 @"ssmix": @"a",
                                 @"device_platform": @"iphone",
                                 @"iid": @"59995201761",
                                 @"ab_client": @"a1,f2,f7,e1",
                                 @"device_type": @"iPhone 7 Plus",
                                 @"idfa": @"96A533E2-6493-4977-A134-3BA8C268875F",
                                 @"city": @"北京",
                                 @"openudid": @"1a42c25d877e65b14bd273324aa776e819d4659e"
                                 };
    return [[NSMutableDictionary alloc]initWithDictionary:parameters];
}

+ (NSString *)timestamp {
    NSInteger interval = (NSInteger)[[NSDate date] timeIntervalSince1970] * 1000;
    return [NSString stringWithFormat:@"%zd",interval];
}

@end
