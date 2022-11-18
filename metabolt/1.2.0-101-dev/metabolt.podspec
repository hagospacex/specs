Pod::Spec.new do |s|
  s.name             = 'metabolt'
  s.version          = '1.2.0-101-dev'
  s.license          = { :type => 'MIT' }
  s.homepage         = 'https://git.duowan.com'
  s.authors          = { 'xiongxiong' => 'xiongxiong@joyy.com' }
  s.summary          = 'MetaBolt SDK.'
  s.requires_arc     = true
  s.swift_version    = '5.0'
  s.platform         = :ios, '8.0'
  s.source           = { :http => 'http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/metabolt/1.2.0-101-dev/metabolt.zip'}
  
  s.default_subspec = 'metabolt-all'

  s.subspec 'metabolt-lite' do |ss|
    ss.source_files     = 'include/*.h'
    ss.vendored_frameworks     = 'libs/MetaBolt-lite.framework'
    ss.framework        = 'Foundation'
    
  end

  s.subspec 'metabolt-all' do |sa|
    sa.source_files     = 'include/*.h'
    sa.vendored_frameworks     = 'libs/MetaBolt-all.framework'
    sa.framework        = 'Foundation'
    
  end
 
end
