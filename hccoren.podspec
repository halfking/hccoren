#
#  Be sure to run `pod spec lint HCCoren.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "hccoren"
  s.version      = "0.0.5"
  s.summary      = "这是一个与业务无关的特定的核心库。"
  s.description  = <<-DESC
这是一个特定的核心库。包含了常用的字串处理、网络处理、图片处理、压缩、正则、JSON、数据库及一个WebServer管理器。简化了外部引用的一些问题。
                   DESC

  s.homepage     = "https://github.com/halfking/hccoren"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "halfking" => "kimmy.huang@gmail.com" }
  # Or just: s.author    = ""
  # s.authors            = { "" => "" }
  # s.social_media_url   = "http://twitter.com/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
   s.platform     = :ios, "7.0"

  #  When using multiple platforms
   s.ios.deployment_target = "7.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

s.source       = { :git => "https://github.com/halfking/hccoren.git", :tag => s.version,:submodules => true  }
#s.source       = { :git => "http://github.com/halfking/hccoren.git", :tag => s.version }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

# s.source_files  = "hccoren", "hccoren/**/regexkitlite.{h,m,mm}"
#  s.exclude_files = "hccoren/Exclude"

#s.public_header_files = "hccoren/**/regexkitlite.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "UIKit"
  # s.frameworks = "UIKit", "Foundation"

  # s.library   = "iconv"
    s.libraries = "icucore","sqlite3.0","stdc++"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = false

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

#  s.default_subspec = 'All'
#  s.subspec 'All' do |spec|
#	spec.ios.dependency 'hccoren/REGEXKITLITE' '~>0.0.5'
#    spec.ios.dependency 'hccoren/Core'          '~>0.0.5'
#spec.ios.dependency 'hccoren/AsyncSocket'
#  end

  s.subspec 'REGEXKITLITE' do |spec|
        spec.requires_arc            = false
        spec.source_files = "hccoren/**/regexkitlite.{h,m,mm}"
        spec.public_header_files = [
            'hccoren/**/regexkitlite.h'
        ]
       
        spec.libraries = [
            "stdc++",
            "stdc++.6",
        ]
  end
#  s.subspec 'AsyncSocket' do |spec|
#        spec.requires_arc            = false
#        spec.source_files = "hccoren/**/regexkitlite.{h,m,mm}"
#        spec.public_header_files = [
#        'hccoren/**/regexkitlite.h'
#        ]
#
#        spec.libraries = [
#        "stdc++",
#        "stdc++.6",
#        ]
#   end
s.subspec 'Core' do |spec|
    spec.requires_arc        = true
    spec.exclude_files = "hccoren/**/regexkitlite.{h,m,mm}","hccoren/**/hccoren.h"
    spec.source_files = "hccoren/**/*.{h,m,mm}"
    spec.public_header_files = [
        'hccoren/**/HCBase.h',
        'hccoren/**/database.h',
        'hccoren/**/cmd.h',
        'hccoren/**/base.h',
        'hccoren/**/images.h',
        'hccoren/**/CommonUtil.h',
        'hccoren/**/CommonUtil(Date).h',
        'hccoren/**/NSArray+CC.h',
        'hccoren/**/NSData+CC.h',
        'hccoren/**/NSDate+CC.h',
        'hccoren/**/NSNumber+CC.h',
        'hccoren/**/NSString+CC.h',
        'hccoren/**/NSTimer+CC.h',
        'hccoren/**/DeviceConfig.h',
        'hccoren/**/OpenUDID.h',
        'hccoren/**/HttpServerManager.h',
        'hccoren/**/HWindowStack.h',
        'hccoren/**/PublicMControls.h',
        'hccoren/**/CMDOP.h',
        'hccoren/**/HCCallbackResult.h',
        'hccoren/**/CMDs.h',
        'hccoren/**/Reachability.h',
        'hccoren/**/images.h',
        'hccoren/**/HCDBHelper.h',
        'hccoren/**/HCSQLHelper.h',
        'hccoren/**/HCDBHelper-init.h',
        'hccoren/**/QCMDUpdateTime.h',
        'hccoren/**/HCImageItem.h',
        'hccoren/**/NSEntity.h',
        'hccoren/**/HCEPropetyType.h',
        'hccoren/**/WindowItem.h',
        'hccoren/**/iVersion.h',
        'hccoren/**/ChinaMapShift.h',
        'hccoren/**/LocationManager.h',
#        'hccoren/**/AsyncSocket.h',
        'hccoren/**/HCSendRequest.h',
        'hccoren/**/Socketsingleton.h',
        'hccoren/**/BlueSessionManager.h',
        'hccoren/**/HttpConnection.h',
        'hccoren/**/HttpResponse.h',
        'hccoren/**/MacAddress.h',
        'hccoren/**/NSData-AES.h',
        'hccoren/**/NSFileManager-AES.h',
#        'hccoren/**/RegexKitLite.h',
        'hccoren/**/NSString+MD5Addition.h',
        'hccoren/**/NSDataGZipAdditions.h',
        'hccoren/**/JSON.h',
        'hccoren/**/MBProgressHUD.h',
        'hccoren/**/ZipFile.h',
        'hccoren/**/UIView+Genie.h',
        'hccoren/**/UIView+LoadFromNib.h',
        'hccoren/**/HWWeakTimer.h',
        'hccoren/**/HCCacheItem.h',
        'hccoren/**/FileDataCacheHelper.h',
        'hccoren/**/WebSocket.h',
        'hccoren/**/CMDSender.h',
        'hccoren/**/trackrecord.h',
        'hccoren/**/CMDHttpHeader.h',
        'hccoren/**/CMDSocketHeader.h'
        ]
        spec.frameworks = [
                'UIKit',
                'CoreLocation',
                'QuartzCore',
                'OpenGLES',
                'SystemConfiguration',
                'CoreGraphics',
                'Security'
            ]
        spec.libraries = ["icucore","sqlite3.0","stdc++"]
        spec.ios.dependency 'hccoren/REGEXKITLITE'
    end
 end
