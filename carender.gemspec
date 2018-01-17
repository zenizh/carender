$:.push File.expand_path('lib', __dir__)

require 'carender/version'

Gem::Specification.new do |s|
  s.name        = 'carender'
  s.version     = Carender::VERSION
  s.authors     = ['kami-zh']
  s.email       = ['hiroki.zenigami@gmail.com']
  s.homepage    = 'https://github.com/kami-zh/carender'
  s.summary     = 'A simple calendar gem for Rails application.'
  s.description = 'A simple calendar gem for Rails application.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.2.0.beta2'

  s.add_development_dependency 'sqlite3'
end
