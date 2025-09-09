Pod::Spec.new do |s|
  s.name             = 'DaroMediationAdapter'
  s.version          = '1.0.0'
  s.summary          = 'DaroMediationAdapter for iOS'
  s.description      = <<-DESC
    DaroMediationAdapter is a framework for Daro Ad SDK.
    It provides ad serving capabilities for iOS applications.
  DESC

  s.homepage         = 'https://github.com/delightroom/ios-daro-ad-sdk'
  s.license          = { :type => 'Commercial', :text => 'Copyright 2025 Delightroom. All rights reserved.' }
  s.author           = { 'Delightroom' => 'dev@delightroom.com' }
  s.source           = { :git => 'https://github.com/delightroom/ios-daro-ad-sdk.git', :tag => 'DaroMediationAdapter-1.0.0' }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  
  s.vendored_frameworks = 'DaroMediationAdapter.xcframework'
  s.preserve_paths = 'DaroMediationAdapter.xcframework'
  
  s.frameworks = 'UIKit', 'Foundation', 'WebKit', 'AVFoundation'
  s.weak_frameworks = 'AppTrackingTransparency'
  
  s.dependency "GoogleMobileAds", "~> 11.0"
  s.dependency "DaroAdSDK", "~> 1.0.0"
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
  
  s.user_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
end
