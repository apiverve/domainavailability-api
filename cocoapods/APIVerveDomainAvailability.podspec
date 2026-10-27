Pod::Spec.new do |s|
  s.name             = 'APIVerveDomainAvailability'
  s.version          = '1.2.3'
  s.summary          = 'Domain Availability checks domain availability in real time to show if a web address is open for registration or already taken.'
  s.description      = <<-'DESC'
Domain Availability checks domain availability in real time to show if a web address is open for registration or already taken. Get creation and expiration dates for taken domains, while paid plans add registrar details and what the domain costs to register and renew.

This iOS/macOS SDK provides a convenient way to access the Domain Availability from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/domainavailability?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/domainavailability-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDomainAvailability/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
