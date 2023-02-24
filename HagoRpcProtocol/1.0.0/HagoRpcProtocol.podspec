#
# Be sure to run `pod lib lint HagoRpcProtocol.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HagoRpcProtocol'
  s.version          = '1.0.0'
  s.summary          = 'HagoRpcProtocol 为 HagoRpcKmm SDK 提供原生PB支持。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
HagoRpcProtocol 为 HagoRpcKmm SDK 提供原生PB支持。
                       DESC

  s.homepage         = 'https://git.duowan.com/midwares/modular/MetaRpcprotocol.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fanchunxing1' => 'fanchunxing1@joyy.com' }
  s.source           = { :http => "http://yyci2020.oss-cn-shenzhen.aliyuncs.com/yyqapm/ios/HagoRpcProtocol/1.0.0/HagoRpcProtocol.zip" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.subspec 'Static' do |static|
    static.source_files = 'include/**/*.*'
    static.vendored_libraries = 'libs/libHagoRpcProtocol.a'
    static.pod_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/include\"/** \"${PODS_ROOT}/Headers/Public/Protobuf\" \"${PODS_ROOT}/Headers/Public\"" }
    static.user_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/include\"/** \"${PODS_ROOT}/Headers/Public/Protobuf\" \"${PODS_ROOT}/Headers/Public\"" }
  end

#  dynamicFramework = 'libs/HagoRpcProtocolDylib.framework'
#  s.subspec 'Dynamic' do |dynamic|
#    dynamic.vendored_frameworks = dynamicFramework
#    dynamic.pod_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/#{dynamicFramework}/Headers/\"/**" }
#    dynamic.user_target_xcconfig = {'HEADER_SEARCH_PATHS' => "\"$(PODS_ROOT)/#{s.name}/#{dynamicFramework}/Headers/\"/**" }
#  end

  s.default_subspec = 'Static'

  # s.source_files = 'HagoRpcProtocol/Classes/**/*'

  # s.resource_bundles = {
  #   'HagoRpcProtocol' => ['HagoRpcProtocol/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  s.dependency 'Protobuf'
  # s.dependency 'AFNetworking', '~> 2.3'
end
