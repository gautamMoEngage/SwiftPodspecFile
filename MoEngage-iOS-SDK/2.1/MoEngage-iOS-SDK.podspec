
Pod::Spec.new do |s|

  s.name         = 'MoEngage-iOS-SDK'
  s.version      = '2.1'
  s.summary      = 'MoEngage Mobile Marketing Automation SDK for iOS - iPhone and iPad'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company. This SDK helps you track events, trigger smart notifications and in-apps, provides a drop-in Inbox Controller for notifications.
                   DESC

  s.homepage     = 'http://www.moengage.com'

  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author             = { 'Gautam Jain' => 'gautam@moengage.com' }
  s.platform     = :ios
  s.ios.deployment_target = '7.0'

  s.source       = { :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', :tag => s.version.to_s }

  s.resources = 'MoEngage.bundle', 'MOInbox/*.{storyboard}'

  s.source_files  = 'MOHeaders/*', 'MOGeofence/*', 'MOInbox/*.{h,m}', 'MoEngage.bundle'

  s.documentation_url = 'http://docs.moengage.com'
  s.requires_arc = true
  
  s.library = 'MoEngageSDK'

  s.frameworks = 'SystemConfiguration', 'CoreLocation' , 'Security'
  s.compiler_flags = '-ObjC'

  s.preserve_paths = 'MoEngage-iOS-SDK/'
  s.ios.vendored_library = 'MoEngage-iOS-SDK/libMoEngageSDK.a'
  s.public_headers ='MoEngage-iOS-SDK/**/*.h'


end
