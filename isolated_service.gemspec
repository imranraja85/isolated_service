$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "isolated_service/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "isolated_service"
  s.version     = IsolatedService::VERSION
  s.authors     = ["Imran Raja"]
  s.email       = ["imranraja85@gmail.com"]
  s.homepage    = "https://github.com/imranraja85/isolated_service"
  s.summary     = "Isolated services lets you fake service calls"
  s.description = "Isolated services lets you fake service calls. This allows you to stub out calls to services that are not currently accessible or not yet build."

  s.files = Dir["MIT-LICENSE", "Rakefile", "README.rdoc", "lib/**/*"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 2.0.0"
  s.add_dependency "sinatra", ">= 1.4.0"
  s.add_dependency "foreman", ">= 0.60.0"
end
