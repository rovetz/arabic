lib = File.expand_path("../lib", __FILE__)
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

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
