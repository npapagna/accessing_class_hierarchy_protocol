# -*- encoding: utf-8 -*-
require File.expand_path('../lib/accessing_class_hierarchy_protocol/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nicolas Papagna Maldonado"]
  gem.email         = ["nicolas.papagna@gmail.com"]
  gem.description   = %q{Implements Smalltalk's Class protocol for accessing subclasses of a class}
  gem.summary       = %q{Implements Smalltalk's Class protocol for accessing subclasses of a class}
  gem.homepage      = "https://github.com/npapagna/accessing_class_hierarchy_protocol"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "accessing_class_hierarchy_protocol"
  gem.require_paths = ["lib"]
  gem.version       = AccessingClassHierarchyProtocol::VERSION

  gem.add_development_dependency 'rspec'
end
