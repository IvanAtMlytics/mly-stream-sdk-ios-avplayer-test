 Pod::Spec.new do |s|
  s.name                    = 'MLYSDK'
  s.version                 = '0.1.39'
  s.summary                 = 'MLYSDK'
  s.description             = 'MLYSDK'                     
  s.homepage                = 'https://github.com/IvanAtMlytics/mly-stream-sdk-ios-avplayer-test' 
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'MLY' => 'rd@mlytics.com' }
  s.source                  = { :git => 'https://github.com/IvanAtMlytics/mly-stream-sdk-ios-avplayer-test.git', :tag => s.version.to_s }
  s.readme                  = 'https://github.com/IvanAtMlytics/mly-stream-sdk-ios-avplayer-test/blob/main/README.md'
  s.swift_version           = '5.0'
  s.ios.deployment_target   = '14.0'
  s.ios.vendored_frameworks = 'Archives/MLYSDK.xcframework'
  
  s.dependency 'Mux-Stats-AVPlayer', '3.1.0' 
 
  s.dependency 'GCDWebServer', '3.5.4'
  s.dependency 'Sentry', '7.31.3'
  s.dependency 'WebRTC-SDK', '=104.5112.16' 
  s.dependency 'SwiftCentrifuge', '0.5.5'
  s.dependency 'SwiftProtobuf', '1.21.0'
  
end
