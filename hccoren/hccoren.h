//
//  hccoren.h
//  hccoren
//
//  Created by HUANGXUTAO on 16/4/19.
//  Copyright © 2016年 seenvoice.com. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for hccoren.
FOUNDATION_EXPORT double hccorenVersionNumber;

//! Project version string for hccoren.
FOUNDATION_EXPORT const unsigned char hccorenVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <hccoren/PublicHeader.h>

#ifndef hccoren_h
#define hccoren__h
#import <hccoren/HCBase.h>
#import <hccoren/database.h>
#import <hccoren/cmd.h>
#import <hccoren/base.h>
#import <hccoren/images.h>
#import <hccoren/CommonUtil.h>
#import <hccoren/CommonUtil(Date).h>
#import <hccoren/NSArray+CC.h>
#import <hccoren/NSData+CC.h>
#import <hccoren/NSDate+CC.h>
#import <hccoren/NSNumber+CC.h>
#import <hccoren/NSString+CC.h>
#import <hccoren/NSTimer+CC.h>
#import <hccoren/DeviceConfig.h>
#import <hccoren/OpenUDID.h>
#import <hccoren/HttpServerManager.h>
#import <hccoren/HWindowStack.h>
#import <hccoren/PublicMControls.h>
#import <hccoren/CMDOP.h>

#import <hccoren/HCCallbackResult.h>

#import <hccoren/CMDs.h>
#import <hccoren/Reachability.h>
#import <hccoren/images.h>
#import <hccoren/HCDBHelper.h>
#import <hccoren/HCSQLHelper.h>
#import <hccoren/HCDBHelper-init.h>
#import <hccoren/QCMDUpdateTime.h>
#import <hccoren/HCImageItem.h>
#import <hccoren/NSEntity.h>		
#import <hccoren/HCEPropetyType.h>
#import <hccoren/WindowItem.h>
#import <hccoren/iVersion.h>
#import <hccoren/ChinaMapShift.h>
#import <hccoren/LocationManager.h>
#import <hccoren/AsyncSocket.h>
#import <hccoren/HCSendRequest.h>
#import <hccoren/Socketsingleton.h>
#import <hccoren/BlueSessionManager.h>
#import <hccoren/HttpConnection.h>
#import <hccoren/HttpResponse.h>
#import <hccoren/MacAddress.h>
#import <hccoren/NSData-AES.h>
#import <hccoren/NSFileManager-AES.h>
#import <hccoren/RegexKitLite.h>
#import <hccoren/NSString+MD5Addition.h>
#import <hccoren/NSDataGZipAdditions.h>
#import <hccoren/JSON.h>
#import <hccoren/MBProgressHUD.h>
#import <hccoren/ZipFile.h>
#import <hccoren/UIView+Genie.h>
#import <hccoren/UIView+LoadFromNib.h>
#import <hccoren/HWWeakTimer.h>
#import <hccoren/HCCacheItem.h>
#import <hccoren/FileDataCacheHelper.h>

#import <hccoren/WebSocket.h>
#import <hccoren/CMDSender.h>
#import <hccoren/trackrecord.h>


//not must,just for warnings
//#import "AFUIImageReflection.h"
#import <hccoren/CMDHttpHeader.h>
#import <hccoren/CMDSocketHeader.h>
//#import "CMDHttpSenderNew.h"
//#import "CMDSender.h"
//#import "CMDSocketSender.h"
//#import "ContextFilterLogFormatter.h"
////#import "crc32.h"
////#import "crypt.h"
//#import "DDAbstractDatabaseLogger.h"
////#import "DDASLogger.h"
//#import "DDData.h"
//#import "DDFileLogger.h"
//#import "DDlog.h"
//#import "DDNumber.h"
//#import "DDrange.h"
//#import "DDTTYLogger.h"
////#import "deflate.h"
//#import "DispatchQueueLogFormatter.h"
//#import "FileInZipInfo.h"
//#import "GCDAsyncSocket.h"
//#import "HCDBHelper(FMDB).h"
//#import "HTTPAsyncFileResponse.h"
//#import "HttpAuthenticationRequest.h"
//#import "HttpDataResponse.h"
//#import "HttpDynamicFileResponse.h"
//#import "HttpErrorResponse.h"
//#import "HttpErrorResponse.h"
//#import "HttpFileResponse.h"
//#import "HttpLogging.h"
//#import "HttpMessage.h"
//#import "HttpRedirectResponse.h"
//#import "HttpServer.h"
////#import "inffast.h"
////#import "inffixed.h"
////#import "inflate.h"
////#import "inffixed.h"
////#import "inftrees.h"
////#import "ipaddress.h"
//#import "mztools.h"
//#import "publictext.h"
//#import "rijndael.h"
//#import "SegementCachemanager.h"
//#import "TrackRecord.h"
////#import "trees.h"
//#import "UIDevice+identifierAddition.h"
////#import "UIDeivce_Reachability.h"
//#import "WebSocket.h"
//#import "wwanconnect.h"
//#import "ZipException.h"
//#import "ZipReadStream.h"
//#import "ZipWriteStream.h"
//#import "zutil.h"
#endif


