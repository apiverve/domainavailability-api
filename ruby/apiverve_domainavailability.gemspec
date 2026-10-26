# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_domainavailability"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Domain Availability API - Ruby Client"
  spec.description   = "Domain Availability checks domain availability in real time to show if a web address is open for registration or already taken. Get creation and expiration dates for taken domains, while paid plans add registrar details and what the domain costs to register and renew."
  spec.homepage      = "https://apiverve.com/marketplace/domainavailability?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/domainavailability-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/domainavailability"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
