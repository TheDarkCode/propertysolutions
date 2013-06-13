$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "property_solutions/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "propertysolutions"
  s.version     = PropertySolutions::VERSION
  s.authors     = ["William Barry"]
  s.email       = ["william@nine.is"]
  s.homepage    = "http://github.com/williambarry007/propertysolutions"
  s.summary     = "A gem to help consume the API for propertysolutions.com"
  s.description = "A gem that interacts with the property management site propertysolutions.com"

  s.files = Dir["{app,bin,config,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.executables = ["propertysolutions"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "activesupport"
  s.add_dependency "trollop"
  s.add_dependency "typhoeus"
  s.add_dependency "json"
  
end
