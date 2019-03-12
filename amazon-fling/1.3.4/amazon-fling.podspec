Pod::Spec.new do |s|
  s.name             = 'amazon-fling'
  s.version          = '1.3.4'
  s.summary          = 'Easily integrate the Amazon Fling SDK to discover and control your FireTV in your app.'

  s.description      = <<-DESC
      Discovering and controlling your FireTV requires the Amazon Fling SDK. \n This SDK is not open source and is owned by Amazon.\n This repo is used to integrate the AmazonFling SDK to iOS projects using Cocoapods",
  DESC

  s.homepage         = 'https://github.com/playmigo/amazon-fling'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Playmigo' => 'info@playmigo.com' }
  s.source           = { :git => 'https://github.com/playmigo/amazon-fling.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.ios.frameworks          = 'CFNetwork', 'Security', 'SystemConfiguration'
  s.ios.vendored_frameworks = 'Frameworks/AmazonFling.framework', 'Frameworks/Bolts.framework'

  s.user_target_xcconfig    = { 'OTHER_LDFLAGS' => '$(inherited) -lc++' }
end
