Pod::Spec.new do |s|
  s.name             = 'KatanaUI'
  s.version          = File.read(".version")
  s.summary          = 'UI for Katana'


  s.description      = <<-DESC

Katana is a modern Swift framework for writing iOS apps, strongly inspired by [React](https://facebook.github.io/react/) and [Redux](http://redux.js.org/), that gives structure to all the aspects of your app.

KatanaElements include UI elements to be used with the Katana framework and allow you to easily get started

                       DESC


  s.homepage         = 'https://github.com/BendingSpoons/katana-ui-swift.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bending Spoons' => 'team@bendingspoons.com' }
  s.source           = { :git => 'https://github.com/BendingSpoons/katana-ui-swift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/katana_swift'

  s.ios.deployment_target = '8.3'
  
  s.source_files = 'KatanaUI/**/**/*.{swift,h}'
  s.dependency 'Katana', "~> 1.0"
end
