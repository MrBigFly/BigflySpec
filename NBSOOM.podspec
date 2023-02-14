Pod::Spec.new do |spec|
  spec.name         = "NBSOOM"
  spec.version      = "1.0"
  spec.summary      = "A Static lirbrary for OOM"
  spec.homepage     = "https://github.com/MrBigFly"
  spec.license      = "MIT"
  spec.author       = "bigfly"
  spec.platform     = :ios, "9.0"
  spec.source       = { :http => "https://github.com/MrBigFly/OOMF/releases/download/1.0/NBSOOM-1.0.zip" }
  spec.static_framework = true
  spec.vendored_frameworks = "NBSOOM-1.0/NBSOOM.xcframework"
  spec.source_files  = 'NBSOOM-1.0/*/ios-arm64_armv7_armv7s/**/*.{h}'
  spec.module_name   = 'NBSOOM'
  spec.pod_target_xcconfig = {  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.dependency 'tingyunApp' , '>=2.17.2'
end
