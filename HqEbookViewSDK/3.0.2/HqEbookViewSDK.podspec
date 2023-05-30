Pod::Spec.new do |s|
        s.name                  = 'HqEbookViewSDK'
        s.version               = '3.0.2'
        s.summary               = 'ios-环球电子阅读插件'
        s.homepage              = 'http://www.100yy.com'
        s.license               = {
                :type => 'Copyright',
                :text => <<-LICENSE
                Copyright 2005-2016 YY Inc., Allrights reserved.
                LICENSE
        }
        s.author                = {'ouyongyong' => 'ouyongyong@yy.com'}
        s.source                = {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/HqEbookViewSDK/3.0.2/HqEbookViewSDK.zip"}
        s.platform              = :ios, '9.0'
        s.requires_arc  = true
        s.source_files  = 'include/**/*.h'
        s.preserve_paths = 'libs/libHqEbookViewSDK.a'
        #s.resource_bundles = {'HqEbookViewSDK' =>['resource/**/*.{png,xib,gif,bundle,xcassets}']}
        s.resources = 'resource/*'

        s.libraries = 'HqEbookViewSDK'
      

        s.dependency 'GDataXML-HTML', '~> 1.4.0'
s.dependency 'GKPhotoBrowser-hqwx', '~>1.6.1'
s.dependency 'SSZipArchive', '1.8.1'
s.dependency 'TouchXML', '~> 0.1'
s.dependency 'hqebooksdk', '1.2.0'
s.dependency 'openssl', '111.6721.0'
        s.xcconfig = { 'HEADER_SEARCH_PATHS' => "$(SDKROOT)/usr/include/libxml2/**", 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/HqEbookViewSDK/libs"' }
end
