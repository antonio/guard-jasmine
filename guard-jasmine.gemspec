# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'guard/jasmine/version'

Gem::Specification.new do |s|
  s.name        = 'guard-jasmine'
  s.version     = Guard::JasmineVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Michael Kessler', 'Nathan Stitt']
  s.email       = ['michi@flinkfinger.com', 'nathan@stitt.org']
  s.homepage    = 'https://github.com/guard/guard-jasmine'
  s.summary     = 'Guard gem for headless testing with Jasmine'
  s.description = 'Guard::Jasmine automatically tests your Jasmine specs on PhantomJS'
  s.license     = 'MIT'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'guard-jasmine'

  s.add_dependency 'guard',        '~> 2.8'
  s.add_dependency 'guard-compat', '~> 1.2'
  s.add_dependency 'jasmine',      '~>2.2'
  s.add_dependency 'multi_json',   '~>1.1'
  s.add_dependency 'childprocess', '~>0.5'
  s.add_dependency 'thor',         '~>0.19'
  # Coverage uses tilt for spec files
  s.add_dependency 'tilt',         '~>2.0'

  s.add_development_dependency 'bundler'

  s.files        = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md)
  s.executables  = ['guard-jasmine', 'guard-jasmine-debug']
  s.require_path = 'lib'
end
