$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "isolated_service/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "isolated_service"
  s.version     = IsolatedService::VERSION
  s.authors     = ["Imran Raja"]
  s.email       = ["imranraja85@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of IsolatedService."
  s.description = "TODO: Description of IsolatedService."

  #s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.files = Dir["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
