Pod::Spec.new do |spec|
  spec.name         = "Next14CMP"
  spec.version      = "1.1.0-beta.1"
  spec.summary      = "Next14 CMP SDK."
  spec.description  = <<-DESC
  Next14 CMP SDK for iOS platform
                   DESC
  spec.homepage     = "https://next14.com"
  spec.license      = "MIT"
  spec.author       = { "Dev Team" => "devteam@jointag.com" }

  spec.platform     = :ios, "11.0"

  spec.source       = {
    :git => "https://github.com/jointag/next14-cmp-ios.git",
    :tag => "#{spec.version}"
  }

  spec.framework    = 'WebKit'

  spec.vendored_frameworks = "Library/Next14CMP.xcframework"

  spec.swift_versions      = ['5.0']
end
