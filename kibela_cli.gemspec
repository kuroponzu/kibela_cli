# frozen_string_literal: true

require_relative "lib/kibela_cli/version"

Gem::Specification.new do |spec|
  spec.name = "kibela_cli"
  spec.version = KibelaCli::VERSION
  spec.authors = ["sho shimohata"]
  spec.email = ["pontatanpo1014@gmail.com"]

  spec.summary = "Kibela CLI tool."
  spec.description = "Create note, Get Group list and so on."
  spec.homepage = "https://github.com/kuroponzu/kibela-cli"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/kuroponzu/kibela-cli/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "thor"
  spec.add_dependency "graphql-client"
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
