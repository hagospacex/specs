Pod::Spec.new do |s|
   s.name                  = "HQLearnCenterExternal"
   s.version               = "1.0.0"
   s.summary               = "学习中心静态库sdk，用于外部接入"
   s.homepage              = "http://www.hqwx.com"
   s.license               = "MIT"
   s.author                = {"litianqi" => "litianqi@hqwx.com"}
   
   s.source                = {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/HQLearnCenterExternal/1.0.0/HQLearnCenterExternal.zip"}
   s.platform              = :ios, "9.0"
   s.requires_arc  = true
   s.frameworks = 'UIKit','Foundation','SystemConfiguration','CoreTelephony','CoreGraphics','MediaPlayer','Security'



   s.dependency 'BlocksKit_nowebview', '~> 2.2.9'
s.dependency 'CocoaLumberjack', '~>3.0.0'
s.dependency 'FDFullscreenPopGesture', '1.1'
s.dependency 'GKPhotoBrowser-hqwx', '~>1.6.3'
s.dependency 'GVUserDefaults', '~>1.0.2'
s.dependency 'HQAPPCommonSDK', '~>0.1.6'
s.dependency 'HQOpenSDK_NoPay', '1.8.7.1'
s.dependency 'HQUagentSDK', '~>1.3.1'
s.dependency 'HQWX_ATAuthSDK', '2.8.0'
s.dependency 'HqAppArchitect', '~>0.1.15'
s.dependency 'HqEbookViewSDK', '~>3.0.2'
s.dependency 'HqMoviePlayerSDK', '~>1.2.25'
s.dependency 'IJKPlayerWithSSL', '1.3.0'
s.dependency 'IQKeyboardManager', '6.5.10'
s.dependency 'JXCategoryView', '1.6.1'
s.dependency 'JXPagingView/Pager', '2.1.2'
s.dependency 'MGJRouterBackup', '0.0.1'
s.dependency 'MJExtension', '3.1.2'
s.dependency 'MJRefresh', '~>3.0'
s.dependency 'MWFeedParser', '1.0.1'
s.dependency 'ReactiveCocoa', '~> 2.3.1'
s.dependency 'Realm', '10.28.5'
s.dependency 'SDWebImage', '~>5.7.3'
s.dependency 'SMPageControl', '~> 1.2'
s.dependency 'SVProgressHUD', '2.2.5'
s.dependency 'SensorsABTesting', '0.0.3'
s.dependency 'SensorsFocus', '0.1.5'
s.dependency 'TABAnimated', '2.5.1'
s.dependency 'TQLClassifyScrollVC', '~>0.0.29.26'
s.dependency 'TQPDFReader', '0.0.10'
s.dependency 'TTTAttributedLabel', '2.0.0'
s.dependency 'TZImagePickerController', '3.8.1'
s.dependency 'UMCommon', '7.3.7'
s.dependency 'UMDevice', '2.2.1'
s.dependency 'UMShare/Social/DingDing', '6.10.2'
s.dependency 'UMShare/Social/QQ', '6.10.2'
s.dependency 'UMShare/Social/Sina', '6.10.2'
s.dependency 'UMShare/Social/WeChatWork', '6.10.2'
s.dependency 'UMShare/UI', '6.10.2'
s.dependency 'YTKNetwork', '~>2.1.0'
s.dependency 'hqwxedu', '2.9.0'
s.dependency 'lottie-ios', '2.5.3'

   
   s.resources = 'resource/**/*.bundle'
   s.libraries = 'HQLearnCenterExternal'
   s.preserve_paths = 'libs/**/*.a'
 

   s.source_files  = "include/*.h"
   

    s.xcconfig   = {
          'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/HQLearnCenterExternal/libs"'
    }


       
end
