Pod::Spec.new do |s|
        s.name                  = "HqMoviePlayerSDK"
        s.version               = "1.2.19"
        s.summary               = "hqwx 录播播放器"
        s.homepage              = "http://www.100yy.com"
        s.license               = "MIT"
        s.author                = {"litianqi" => "litianqi@hqwx.com"}
        s.source                = {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/HqMoviePlayerSDK/1.2.19/HqMoviePlayerSDK.zip"}
        s.platform              = :ios, "9.0"
        s.requires_arc  = true

        s.frameworks = 'CoreGraphics' ,'UIKit','Foundation','AVKit','AVFoundation','AVFAudio'
        
	s.libraries = 'HqMoviePlayerSDK', 'z', 'resolv' 
        s.source_files  = 'include/**/*.h'

        s.resources = 'resource/**/*.bundle'
        s.preserve_paths = 'libs/**/*.a'

        s.dependency 'AFNetworking/Reachability', '~>3.0'
s.dependency 'CocoaAsyncSocket', '~>7.6.5'
s.dependency 'CocoaLumberjack', '~>3.0.0'
s.dependency 'HQAPPCommonSDK', '~>0.1.3'
s.dependency 'JSONKit-NoWarning', '~> 1.2'
s.dependency 'Realm', '10.28.5'
s.dependency 'SDWebImage', '~>5.7.3'
s.dependency 'SVProgressHUD', '2.2.5'
s.dependency 'hqvideoresolver', '~> 1.1.0'
s.dependency 'pop', '~>1.0'

        
        s.ios.deployment_target	= '9.0'
	     
	 s.xcconfig   = {
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/HqMoviePlayerSDK/libs"'
	}


       
end
