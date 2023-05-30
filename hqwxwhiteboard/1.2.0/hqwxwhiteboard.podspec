Pod::Spec.new do |s|
	s.name 			= 'hqwxwhiteboard'
	s.version 		= '1.2.0'
	s.summary 		= 'edu24app cross platform SDK for iOS'
	s.homepage 		= 'http://www.joyyinc.com'
	s.license 		= {
		:type => 'Copyright',
		:text => <<-LICENSE
		Copyright 2005-2013 YY Inc., Allrights reserved.
		LICENSE
	}
	s.author 		= {'jiangpaifeng' => 'jiangpaifeng@yy.com'}
	s.source 		= {:http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/hqwxwhiteboard/1.2.0/hqwxwhiteboard.zip"}
	s.source_files	= 'include/**/*.{h,hpp}'
	s.preserve_paths = 'libs/*.a'
	s.ios.deployment_target	= '9.0'
	s.requires_arc	= true
    s.libraries = 'hqwxwhiteboard', 'c++', 'z'

    s.dependency 'curl', '~> 7620.6703.0'
s.dependency 'hqwxbase', '~> 1.0.7'
s.dependency 'hqwxclassroom', '~> 1.2.0'
s.dependency 'hqwxmetrics', '~> 1.0.6'
s.dependency 'libjpeg-turbo', '~> 142.4725.0'
s.dependency 'libpng', '~> 1616.4743.0'

	s.xcconfig   = {
	    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/hqwxwhiteboard/libs"'
	}
end
