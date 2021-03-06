# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'learn_writer/version'

Gem::Specification.new do |spec|
  spec.name          = "learn_writer"
  spec.version       = LearnWriter::VERSION
  spec.authors       = ["Sophie DeBenedetto"]
  spec.email         = ["sophie.debenedetto@gmail.com"]

  spec.summary       = %q{can write a .learn, license, contributing file}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.files = ['lib/learn_writer.rb', 'bin/learn-write', 'lib/learn_writer/version.rb', 'lib/learn_writer/valid_license.md', 'lib/learn_writer/valid_contributing.md', 'lib/learn_writer/valid_dot_learn.yml'] 
  spec.executables << 'learn-write'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
