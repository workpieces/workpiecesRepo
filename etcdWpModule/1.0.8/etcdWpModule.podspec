#
#  Be sure to run `pod spec lint GMLikeMeModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #
  spec.name         = "etcdWpModule"
  spec.version      = "1.0.8"
  spec.summary      = "A short description of etcdWpModule."
  spec.homepage     = "https://github.com/workpieces/etcdLibrary"
  spec.summary      = "{\"description\":\"A short description of etcdWpModule.\",\"level\":0,\"dependforms\":[]}"
  spec.license      = { :type => "MIT", :file => "license" }
  spec.author             = { "workpieces" => "workpieces.app@gmail.com" }
  spec.source       = { :git => "git@github.com:workpieces/etcdWpModule.git", :tag => "#{spec.version}" }
  spec.platform     = :ios, "14.0"
  spec.swift_versions = ['5']
  spec.osx.deployment_target = '10.14'
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 arm64' }
  spec.default_subspecs = 'iosModule'
  spec.static_framework = true
  spec.subspec 'iosModule' do |ss|
     ss.vendored_frameworks = 'framework_tmp/framework/MobileIOSEtcd.framework'
   end
   spec.subspec 'macOSModule' do |ss|
     ss.static_framework = true
     ss.vendored_frameworks = 'MacosEtcd.xcframework/macos-arm64_x86_64/MacosEtcd.framework'
   end
end
