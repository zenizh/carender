$:.push File.expand_path('lib', __dir__)

require 'carender/version'

Gem::Specification.new do |s|
  s.name        = 'carender'
  s.version     = Carender::VERSION
  s.authors     = ['kami-zh']
  s.email       = ['hiroki.zenigami@gmail.com']
  s.summary     = 'A simple calendar gem for Rails application.'
  s.description = 'A simple calendar gem for Rails application.'
  s.homepage    = 'https://github.com/kami-zh/carender'
  s.license     = 'MIT'
  s.files       = Dir['lib/**/*', 'LICENSE.txt', 'Rakefile', 'README.md']

  s.add_dependency 'activesupport'

  s.add_development_dependency 'actionview'
  s.add_development_dependency 'oga'
  s.add_development_dependency 'rake'
end
