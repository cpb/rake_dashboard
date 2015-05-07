# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake_dashboard/version'

Gem::Specification.new do |spec|
  spec.name          = "rake_dashboard"
  spec.version       = RakeDashboard::VERSION
  spec.authors       = ["Caleb Buxton"]
  spec.email         = ["me@cpb.ca"]

  spec.summary       = %q{Lists rake tasks for remote execution through a browser.}
  spec.description   = %q{Lists rake tasks for remote execution through a browser.}
  spec.homepage      = "http://github.com/cpb/rake_dashboard"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.1.0"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
end
