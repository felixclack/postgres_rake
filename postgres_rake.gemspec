# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postgres_rake/version'

Gem::Specification.new do |spec|
  spec.name          = "postgres_rake"
  spec.version       = PostgresRake::VERSION
  spec.authors       = ["Felix Clack"]
  spec.email         = ["felixclack@gmail.com"]
  spec.description   = %q{A rake task to kill connections to a Postgres database and remove annoying error messages during migrations in development.}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
