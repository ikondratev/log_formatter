lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'log_formatter/version'

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  if s.respond_to? :required_rubygems_version=
    s.required_rubygems_version = Gem::Requirement.new('>= 0')
  end
  s.rubygems_version = '2.7'
  s.required_ruby_version = '>=2.2'
  s.name = 'log_formatter'
  s.version = LogFormatter::VERSION
  s.license = 'MIT'
  s.summary = 'Logger'
  s.description = 'Log formatter.'
  s.authors = ['kilya']
  s.email = 'ilyafulleveline@gmail.com'
  s.homepage = 'https://github.com/ikondratev/log_formatter'
  s.files = `git ls-files`.split($RS)
  s.add_dependency 'rubocop', '~> 1.26'
  s.add_dependency 'rubocop-rake'
  s.add_dependency 'rspec', '~> 3.9.0'
  s.add_dependency 'debase'
end