Pod::Spec.new do |s|
        s.name                  = "HqAppArchitect"
        s.version               = "0.1.13"
        s.summary               = "app-ios 组件化集合"
        s.homepage              = "http://www.100yy.com"
        s.license               = "MIT"
        s.author                = {"litianqi" => "litianqi@hqwx.com"}
        s.source                = {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/HqAppArchitect/0.1.13/HqAppArchitect.zip"}
        s.platform              = :ios, "9.0"
        s.requires_arc  = true

        s.frameworks = 'CoreGraphics' ,'UIKit','Foundation' ,'Security'

        s.source_files	= 'include/**/*.h'
        s.resources = 'resource/**/*.bundle'
        s.libraries = 'HqAppArchitect'
        s.preserve_paths = 'libs/**/*.a'
        s.dependency 'AFNetworking/Reachability', '~>3.0'
s.dependency 'CocoaLumberjack', '~>3.0.0'
s.dependency 'JSONKit-NoWarning', '~> 1.2'
s.dependency 'MJExtension', '3.1.2'
s.dependency 'ReactiveCocoa', '~> 2.3.1'
s.dependency 'Realm', '10.28.5'
s.dependency 'SVProgressHUD', '2.2.5'
s.dependency 'YTKNetwork', '~>2.1.0'

        s.pod_target_xcconfig = {
                 'ARCHS' => '$(ARCHS_STANDARD)',
                'VALID_ARCHS' => 'arm64 x86_64'
        }

        s.user_target_xcconfig = {
                'VALID_ARCHS' => 'arm64 x86_64'
        }

	s.xcconfig   = {
	 
               'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/HqAppArchitect/libs"'
      }


        

       
end
