# -*- encoding: utf-8 -*-
require File.expand_path('../lib/square_bracket/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tejas Dinkar"]
  gem.email         = ["tejas@gja.in"]
  gem.description   = %q{Allows tags like [gist 12] in your markdown}
  gem.summary       = %q{Gem to easily extend markdown}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "square_bracket"
  gem.require_paths = ["lib"]
  gem.version       = SquareBracket::VERSION
  gem.add_dependency "redcarpet"
  gem.add_development_dependency "rspec"
end
