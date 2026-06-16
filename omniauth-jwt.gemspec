# frozen_string_literal: true

load "lib/omniauth/jwt/version.rb"
gem_version =
  if Gem.ruby_version >= Gem::Version.new("3.1")
    # Loading Version into an anonymous module allows version.rb to get code coverage from SimpleCov!
    # See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-2630782358
    # See: https://github.com/panorama-ed/memo_wise/pull/397
    Module.new.tap { |mod| Kernel.load("#{__dir__}/lib/omniauth/jwt/version.rb", mod) }::Omniauth::JWT::Version::VERSION
  else
    require_relative "lib/omniauth/jwt/version"
    Omniauth::JWT::Version::VERSION
  end

Gem::Specification.new do |spec|
  spec.name = "omniauth-jwt"
  spec.version = gem_version
  spec.authors = ["Michael Bleigh", "Peter Boling"]
  spec.email = ["floss@galtzo.com"]

  spec.summary = "An OmniAuth strategy to accept JWT-based single sign-on."
  spec.description = "omniauth-jwt is a compatibility shim for omniauth-jwt2."
  spec.homepage = "https://github.com/omniauth/omniauth-jwt"
  spec.licenses = ["MIT"]
  spec.required_ruby_version = ">= 2.2"

  spec.metadata["homepage_uri"] = "https://omniauth-jwt.galtzo.com"
  spec.metadata["source_code_uri"] = "#{spec.homepage}/tree/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{spec.homepage}/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.glob("lib/**/*.rb") + %w[
    CHANGELOG.md
    LICENSE.txt
    README.md
  ].select { |path| File.exist?(path) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth-jwt2"

  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.12"
end
