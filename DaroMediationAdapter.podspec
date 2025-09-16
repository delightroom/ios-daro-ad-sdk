Pod::Spec.new do |s|
  s.name             = 'DaroMediationAdapter'
  s.version          = '1.0.8'
  s.summary          = 'DaroMediationAdapter for iOS'
  s.description      = <<-DESC
    DaroMediationAdapter is a framework for Daro Ad SDK.
    It provides ad serving capabilities for iOS applications.
  DESC

  s.homepage         = 'https://github.com/delightroom/ios-daro-ad-sdk'
  s.license          = { :type => 'Commercial', :text => 'Copyright 2025 Delightroom. All rights reserved.' }
  s.author           = { 'Delightroom' => 'dev@delightroom.com' }
  s.source           = { :http => "https://github.com/delightroom/ios-daro-ad-sdk/releases/download/1.0.8/DaroMediationAdapter.xcframework.zip" }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.7'
  
  s.vendored_frameworks = 'DaroMediationAdapter.xcframework'
  s.static_framework = true
  
  s.frameworks = 'UIKit', 'Foundation', 'WebKit', 'AVFoundation'
  s.weak_frameworks = 'AppTrackingTransparency'
  
  s.dependency "Google-Mobile-Ads-SDK", "12.2.0"
  s.dependency "DaroAdSDK", "1.0.8"
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
end
