#
# Be sure to run `pod lib lint SSBaseClass.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SSBaseClass"
  s.version          = "0.2.0"
  s.summary          = "Basic Customisation for UIControls"
  s.description      = <<-DESC
                        Using IB_Designable and IBInspectable to custom UIControls using boilerplate code.
                       DESC

  s.homepage         = "https://github.com/shwetsolanki/SSBaseClass"
  s.license          = 'MIT'
  s.author           = { "Shwet Solanki" => "me@shwet.net" }
  s.source           = { :git => "https://github.com/shwetsolanki/SSBaseClass.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/shwetsolanki'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SSBaseClass' => ['Pod/Assets/*.png']
  }
  s.dependency 'SZTextView'
  s.dependency 'HexColors'
end
