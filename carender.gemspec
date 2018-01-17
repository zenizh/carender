$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "carender/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "carender"
  s.version     = Carender::VERSION
  s.authors     = ["kami-zh"]
  s.email       = ["hiroki.zenigami@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Carender."
  s.description = "TODO: Description of Carender."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0.beta2"

  s.add_development_dependency "sqlite3"
end
