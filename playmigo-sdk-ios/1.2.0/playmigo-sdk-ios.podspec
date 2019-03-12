Pod::Spec.new do |s|
  s.name         = "playmigo-sdk-ios"
  s.version      = "1.2.0"
  s.summary      = "Access the best video and audio on all your devices"

  s.description  = <<-DESC
                    Playmigo is designed to connect your streaming service to the widest range of connected devices on the market today
                   DESC

  s.homepage     = "http://www.playmigo.com"
  s.license      = { :type => "Playmigo Terms of Service", :text => "https://www.playmigo.com/termsofservice.html" }
  s.author       = { "Playmigo" => "info@playmigo.com" }
  s.social_media_url   = "http://twitter.com/playmigo"

  s.platform     = :ios, "9.0"
  s.source       = { :http => "https://github.com/playmigo/playmigo-sdk-ios/raw/master/"+s.version.to_s+"/playmigo-sdk-ios-"+s.version.to_s+".zip"}

  s.preserve_paths = "playmigo-sdk-ios/*.*",
  s.vendored_frameworks = "playmigo-sdk-ios/Playmigo.framework"
  s.libraries = "z", "c++", "icucore"

  s.xcconfig = {"ENABLE_BITCODE" => "NO"}
  s.dependency "google-cast-sdk", "~> 2.7.1"
end
