# frozen_string_literal: true

require_relative "lib/cronos_scanner/version"

Gem::Specification.new do |spec|
  spec.name          = "cronos_scanner"
  spec.version       = CronosScanner::VERSION
  spec.authors       = ["dave"]
  spec.email         = ["dave.gu@crypto.com"]

  spec.summary       = "A Ruby Gem For Cronos Chain"
  spec.description   = "An unofficial simple gem For Cronos Chain Explorer API"
  spec.homepage      = 'https://github.com/gu-dave/cronos_scanner'
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = 'https://rubygems.org'

  spec.metadata["homepage_uri"] = 'https://github.com/gu-dave/cronos_scanner'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
