#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_remote_control.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_remote_control'
  s.version          = '0.0.1'
  s.summary          = 'A terminal like server to your app'
  s.description      = <<-DESC
A terminal like server to your app
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
