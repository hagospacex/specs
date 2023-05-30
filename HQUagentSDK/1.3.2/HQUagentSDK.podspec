Pod::Spec.new do |s|
   s.name                  = "HQUagentSDK"
   s.version               = "1.3.2"
   s.summary               = "登录模块网络接口部分"
   s.homepage              = "http://www.100yy.com"
   s.license               = "MIT"
   s.author                = {"litianqi" => "litianqi@hqwx.com"}
   
   s.source                = {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/HQUagentSDK/1.3.2/HQUagentSDK.zip"}
   s.platform              = :ios, "9.0"
   s.requires_arc  = true
   s.frameworks = 'UIKit','Foundation','SystemConfiguration'



   s.dependency 'CocoaLumberjack', '~>3.0.0'
s.dependency 'HqAppArchitect', '~>0.1.6'
s.dependency 'YTKNetwork', '~>2.1.4'

   
   s.resources = 'resource/**/*'
   s.libraries = 'HQUagentSDK'
   s.preserve_paths = 'libs/**/*.a'
 

   s.source_files  = "include/*.h"
   
   s.subspec 'API' do |a|
     a.source_files = 'include/api/*.h'
    end
   
   s.subspec 'Manager' do |b|
      
      b.source_files = 'include/manager/*.h'
      
   end
   s.subspec 'Model' do |c|
       
      c.source_files = 'include/model/*.h'
   end
   
   s.subspec 'Other' do |d|
      d.source_files = 'include/other/*.h'
   
   end

    s.xcconfig   = {
          'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/HQUagentSDK/libs"'
    }


       
end
