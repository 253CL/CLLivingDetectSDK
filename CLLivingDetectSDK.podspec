#
# Be sure to run `pod lib lint LLivingDetectSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'CLLivingDetectSDK'
  s.version          = '1.0.0.3'
  s.summary          = '活体检测'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO:活体SDK检测
                       DESC
  s.homepage         = 'https://github.com/253CL'
   #s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '253CL' => 'app@253.com' }
  s.source           = { :git => 'https://github.com/253CL/CLLivingDetectSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.libraries   = 'resolv','z','c++.1','c++abi','z.1.2.8'
  s.vendored_frameworks =  'CLLivingDetectSDK/Classes/framework/*.{framework}'
  
#  s.resources = ['CLLivingDetectSDK/Classes/framework/*.{framework}/*.bundle']
   s.frameworks = 'CoreGraphics', 'Accelerate','SystemConfiguration','AssetsLibrary','CoreTelephony','QuartzCore','CoreFoundation','CoreLocation','ImageIO','CoreMedia','CoreMotion','AVFoundation','WebKit','AudioToolbox','MobileCoreServices','AdSupport'
   s.weak_framework = 'CFNetwork'
  
  
  s.pod_target_xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/CLLivingDetectSDK/Classes/framework',
      'OTHER_LDFLAGS' => ['$(inherited)' ,'-undefined dynamic_lookup' '-ObjC'],
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.user_target_xcconfig = {
      'OTHER_LDFLAGS' => ['-lObjC'],
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
       'ENABLE_BITCODE' => 'NO'
   }
  s.resources = ['CLLivingDetectSDK/Classes/framework/*.{framework}/*.bundle']

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
