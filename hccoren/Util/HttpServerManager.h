//
//  HttpServerManager.h
//  maiba
//
//  Created by seentech_5 on 15/12/8.
//  Copyright © 2015年 seenvoice.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpServerManager : NSObject

+ (HttpServerManager *)shareObject;
- (void)startHttpServer:(NSString*)dir;
- (void)stopHttpServer;
- (NSString *)buildUrlForResource:(NSString *)fileAndPath;
@end
