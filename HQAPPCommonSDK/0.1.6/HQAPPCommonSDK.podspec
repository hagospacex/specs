
Pod::Spec.new do |s|
        s.name                  = "HQAPPCommonSDK"
        s.version               = "0.1.6"
        s.summary               = "app-ios 公共工具类：类别..."
        s.homepage              = "http://www.100yy.com"
        s.license               = "MIT"
        s.author                = {"litianqi" => "litianqi@hqwx.com"}
        s.source                = {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/HQAPPCommonSDK/0.1.6/HQAPPCommonSDK.zip"}
        s.platform              = :ios, "9.0"
        s.requires_arc  = true
        
        s.frameworks = 'CoreGraphics' ,'UIKit','Foundation','QuartzCore','SceneKit'

        s.dependency 'AliyunOSSiOS', '2.10.9'
s.dependency 'BlocksKit_nowebview', '~> 2.2.8'
s.dependency 'DZNEmptyDataSet', '~>1.8.1'
s.dependency 'MJExtension', '3.1.2'
s.dependency 'SDWebImage', '~>5.7.3'
s.dependency 'Stinger', '~>0.3.0'
s.dependency 'YYText', '~>1.0.7'
s.dependency 'pop', '~>1.0'


        s.resources = 'resource/**/*'
        s.libraries = 'HQAPPCommonSDK'
        s.preserve_paths = 'libs/**/*.a'

        s.subspec  'HQWX-CategoryClass' do |a|
                a.source_files = 'include/HQAPPCommonSDK/*.h'
        end

        s.subspec  'HQOther' do |a|
                a.source_files = 'HQOther/**/*.{h,m}'
        end


         s.xcconfig   = {
                     'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/HQAPPCommonSDK/libs"'
         }

       
end
