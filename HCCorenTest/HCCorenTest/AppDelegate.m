//
//  AppDelegate.m
//  HCCorenTest
//
//  Created by HUANGXUTAO on 16/5/4.
//  Copyright © 2016年 seenvoice.com. All rights reserved.
//

#import "AppDelegate.h"
#import "publicconfig.h"
#import "CMD_GetMtvInfo.h"
#import "Json.h"
#import "base.h"
#import "CMDS.h"
#import "HCCallbackresult.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    DeviceConfig * config = [DeviceConfig config];
    
#ifndef __OPTIMIZE__
    BOOL debugMode = YES;
#else
    BOOL debugMode = NO;
#endif
    
    [config changeConfigs:CT_INTERFACE imageServer:CT_IMAGESERVERPATH imageSever2:CT_IMAGEPATHROOT uploadServer:CT_UPLOADSERVER uploadService:CT_UPLOADSERVERPATH debugMode:debugMode];
    
//    CMD_CREATE(cmd, GetMtvInfo, @"GetMtvInfo");
//    cmd.MtvID = 3741;
//    cmd.HasSample = YES;
//    //    [self showProgressHUDWithMessage:@"waiting..."];
//    cmd.CMDCallBack = ^(HCCallbackResult * result)
//    {
//        //        [self hideProgressHUD:YES];
//        if(result.Code==0)
//        {
//            if (result.Data) {
//                //NSlog(@"data:%@",[result.Data json])
//            }
//        }
//    };
//    if ([cmd sendCMD]) {
//        //        [self hideProgressHUD:YES];
//    }
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        CMD_CREATE(cmd, GetMtvInfo, @"GetMtvInfo");
//        cmd.MtvID = 3741;
//        cmd.HasSample = NO;
//        //    [self showProgressHUDWithMessage:@"waiting...	"];
//        cmd.CMDCallBack = ^(HCCallbackResult * result)
//        {
//            //        [self hideProgressHUD:YES];
//            if(result.Code==0)
//            {
//                if (result.Data) {
//                    //NSlog(@"data:%@",[result.Data json])
//                }
//            }
//        };
//        if ([cmd sendCMD]) {
//            //        [self hideProgressHUD:YES];
//        }
//        cmd = nil;
//    });
//    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
