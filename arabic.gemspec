# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "arabic/version"

Gem::Specification.new do |spec|
  spec.name          = "arabic"
  spec.version       = Arabic::VERSION
  spec.authors       = ["rovetz"]
  spec.email         = ["zakbox@gmail.com"]

  spec.summary       = "Romanization (transliteration) of Arabic"
  spec.description   = "Converts Arabic text to the Roman (Latin) script"
  spec.homepage      = "https://github.com/rovetz/arabic"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["source_code_uri"] = "https://github.com/rovetz/arabic"
  spec.metadata["changelog_uri"] = "https://github.com/rovetz/arabic/blob/main/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/rovetz/arabic/issues"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github])
    end
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "irb"
  spec.add_development_dependency "minitest", "~> 5.25"
  spec.add_development_dependency "rake", "~> 13.2"
  spec.add_development_dependency "rdoc"
  spec.add_development_dependency "rubocop", "~> 1.64"
  spec.add_development_dependency "simplecov", "~> 0.22"
end
