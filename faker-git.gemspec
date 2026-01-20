# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = "faker-git"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Generate fake Git values such as branch names"
  s.description = "Exploring adding external generators to faker ruby"
  s.authors     = ["Stefanni Brasil"]
  s.files       = ["lib/git.rb"]
  s.license       = "MIT"
  s.homepage    = 'https://github.com/stefannibrasil/faker-git'

  s.files         = Dir['lib/**/*'] + %w[README.md]
  s.bindir         = 'exe'
  s.executables    = s.files.grep(%r{^exe/}) { |f| File.basename(f) }

  s.required_ruby_version = '>= 3.5'

  s.add_dependency 'faker'
end