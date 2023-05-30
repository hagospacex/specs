Pod::Spec.new do |s|
	s.name 			= 'hqebooksdk'
	s.version 		= '1.2.0'
	s.summary 		= 'ebook cross platform SDK for iOS'
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
	s.homepage 		= 'http://www.joyyinc.com'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqebooksdk/1.2.0/hqebooksdk.zip"}
	s.source_files	= 'include/*.h'
	s.preserve_paths = 'libs/*.a'
    s.resources = 'resource/*'

    s.libraries = 'hqebooksdk', 'c++', 'z'
    
    s.dependency 'hqwxbase', '~> 1.0.0'

	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
	s.xcconfig   = { 
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqebooksdk/libs"'
	}
end
