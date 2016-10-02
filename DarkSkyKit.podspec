Pod::Spec.new do |s|
  s.name             = 'DarkSkyKit'
  s.version          = '0.0.1'
  s.summary          = 'Client for darksky.net API'
  s.description      = <<-DESC
Swift client for darksky.net API
                       DESC
  s.homepage         = 'https://github.com/carambalabs/DarkSkyKit'
  s.social_media_url = "https://twitter.com/carambalabs"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Caramba.io' => 'hello@caramba.io' }
  s.source           = { :git => 'https://github.com/carambalabs/DarkSkyKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'DarkSkyKit/**/*'
  s.dependency 'Alamofire/Alamofire', '~> 3.5.0'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
end
