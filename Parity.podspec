#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name                    = "Parity"
  s.version                 = "2.3.0"
  s.summary                 = "An integer parity microlibrary."
  s.homepage                = "https://github.com/dclelland/Parity"
  s.license                 = { :type => 'MIT' }
  s.author                  = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source                  = { :git => "https://github.com/dclelland/Parity.git", :tag => "2.3.0" }
  s.swift_version           = '5.0'
  s.ios.deployment_target   = '8.0'
  s.osx.deployment_target   = '10.15'
  s.source_files            = 'Parity.swift'
  s.requires_arc            = true
end
