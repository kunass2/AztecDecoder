#
# Be sure to run `pod lib lint AztecDecoder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AztecDecoder'
  s.version          = '1.0'
  s.summary          = 'Easily decode your aztec string.'
  s.description      = "Looking for simple Swift library to decode aztec string? This one is for you:)"
  s.homepage         = 'https://github.com/kunass2/AztecDecoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bartlomiej Semanczyk' => 'bartekss2@icloud.com' }
  s.source           = { :git => 'https://github.com/kunass2/AztecDecoder.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'AztecDecoder/Classes/**/*'
end
