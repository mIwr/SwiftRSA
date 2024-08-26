Pod::Spec.new do |spec|
  spec.name         = "SwiftRSA"
  spec.version      = "2.4.1"
  spec.summary      = "RSA Cryptography in Swift"
  spec.author       = { "Leif Ibsen" => "https://github.com/leif-ibsen" }
  spec.homepage     = "https://github.com/leif-ibsen/SwiftRSA"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.osx.deployment_target = "10.13"
  spec.ios.deployment_target = "11.0"
  spec.tvos.deployment_target = "11.0"
  spec.watchos.deployment_target = "4.0"
  spec.swift_version = "5.0"
  spec.source        = { :git => "https://github.com/mIwr/SwiftRSA.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/SwiftRSA/*.swift", "Sources/SwiftRSA/**/*.swift"
  spec.framework     = "Foundation"
  spec.dependency    "ASN1"
  spec.dependency    "Digest"
  spec.dependency    "SwBigInt"
  spec.resource_bundles = {'SwiftRSA' => ['Sources/SwiftRSA/PrivacyInfo.xcprivacy']}
end
