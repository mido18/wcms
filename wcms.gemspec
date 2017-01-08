$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wcms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wcms"
  s.version     = Wcms::VERSION
  s.authors     = ["Mohamed Abdelrahman"]
  s.email       = ["mohamed_abdelrahman@icloud.com"]
  s.homepage    = "https://github.com/mido18/wcms"
  s.summary     = "This is web content mangement system"
  s.description = "This is web content mangement system for company profiles"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "haml"
  s.add_dependency "paperclip", "~> 5.0.0"
  s.add_dependency 'globalize'

  s.add_development_dependency "pg"
  s.add_development_dependency "html2haml"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "haml"
  s.add_development_dependency "erb2haml"
  s.add_development_dependency "paperclip", "~> 5.0.0"
  s.add_development_dependency 'globalize'
end
