# frozen_string_literal: true

require_relative "lib/cooklang/version"

Gem::Specification.new do |spec|
  spec.name = "cooklang"
  spec.version = Cooklang::VERSION
  spec.authors = [ "James Brooks" ]
  spec.email = [ "james@jamesbrooks.net" ]

  spec.summary = " Ruby library for working with Cooklang"
  spec.homepage = "https://github.com/jamesbrooks/cooklang-rb"
  spec.required_ruby_version = ">= 2.7.5"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jamesbrooks/cooklang-rb"
  spec.metadata["changelog_uri"] = "https://github.com/jamesbrooks/cooklang-rb/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = [ "lib" ]

  spec.add_development_dependency "rubocop", "~> 1.23"
  spec.add_development_dependency "rubocop-performance", "~> 1.12"
  spec.add_development_dependency "rubocop-rspec", "~> 2.6"
end
