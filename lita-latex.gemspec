Gem::Specification.new do |spec|
  spec.name          = "lita-latex"
  spec.version       = "0.0.3"
  spec.authors       = ["Zac Stewart"]
  spec.email         = ["zgstewart@gmail.com"]
  spec.description   = %q{A Lita handler for rendering LaTeX}
  spec.summary       = %q{A Lita handler for rendering LaTeX}
  spec.homepage      = "https://github.com/zacstewart/lita-latex"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 2.14"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
