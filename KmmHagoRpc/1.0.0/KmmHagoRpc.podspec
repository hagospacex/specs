#
# Be sure to run `pod lib lint KmmHagoRpc.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KmmHagoRpc'
  s.version          = '1.0.0'
  s.summary          = 'KmmHagoRpc Hago Rpc SDK。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
KmmHagoRpc Hago Rpc SDK。
                       DESC

  s.homepage         = 'https://git.duowan.com/apps/hago/sdks/hagorpc-cross.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ItghostFan' => 'fanchunxing1@joyy.com' }
  s.source           = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/KmmHagoRpc/1.0.0/HagoRpc.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  #s.subspec 'Static' do |static|
  #  static.source_files = 'include/**/*.*'
  #  static.vendored_libraries = 'libs/libHagoRpc.a'
  #  static.pod_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/include\"/**" }
  #  static.user_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/include\"/**" }
  #end

  dynamicFramework = 'libs/HagoRpc.framework'
  s.subspec 'Dynamic' do |dynamic|
    dynamic.vendored_frameworks = dynamicFramework
    dynamic.pod_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/#{dynamicFramework}/Headers/\"/**" }
    dynamic.user_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/#{dynamicFramework}/Headers/\"/**" }
  end

  s.default_subspec = 'Dynamic'

  # s.source_files = 'HagoRpc/Classes/**/*'

  # s.resource_bundles = {
  #   'HagoRpc' => ['HagoRpc/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  # s.libraries = 'swiftCore'
  # s.swift_version = '5.0'
  s.dependency 'HagoRpcProtocol'
  s.dependency 'SocketRocket'
  s.dependency 'AFNetworking'
end
