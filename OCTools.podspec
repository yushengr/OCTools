#
# Be sure to run `pod lib lint AdBanaSDKSample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OCTools'
  s.version          = '0.1.0'
  s.summary          = 'OC Tools'
  s.description      = 'This is OCTools'

  s.homepage         = 'http://www.adbana.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'InsectQY' => '704861917@qq.com' }
  s.source           = { :git => 'https://github.com/yushengr/OCTools.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.frameworks = 'AdSupport', 'UIKit'
  s.libraries = 'sys'
  s.source_files = 'Parameter/Classes/**'
end
