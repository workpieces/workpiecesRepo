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
  spec.version      = "0.0.1"
  spec.summary      = "A short description of etcdWpModule."
  spec.homepage     = "https://github.com/workpieces/etcdLibrary"
  spec.summary      = "{\"description\":\"A short description of etcdWpModule.\",\"level\":0,\"dependforms\":[]}"
  spec.license      = { :type => "MIT", :file => "license" }
  spec.author             = { "workpieces" => "workpieces.app@gmail.com" }
  spec.source       = { :git => "git@github.com:workpieces/etcdWpModule.git", :tag => "#{spec.version}" }
  spec.default_subspecs = 'iosModule', 'macOSModule'
  spec.subspec 'iosModule' do |ss|
    ss.platform     = :ios, "14.0"
    ss.ios.deployment_target = '14.0'
    ss.vendored_frameworks = 'framework_tmp/framework/*.framework'
  end
  spec.subspec 'macOSModule' do |ss|
    ss.platform     = :osx, "11.0" 
    ss.osx.deployment_target = '11.0'
    ss.vendored_frameworks = 'MacosEtcd.xcframework/macos-arm64_x86_64/*.framework'
  end
end
