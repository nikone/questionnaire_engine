$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "qe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "questionnaire_engine"
  s.version     = Qe::VERSION
  s.authors     = ["Josh Starcher"]
  s.homepage    = "http://www.github.com/twinge/questionnaire_engine"
  s.summary     = "Questionnaire Engine in Rails Engine Gem form"
  s.description = "A Rails 3.2+ solution for adding user customized question/answer functionality"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*", "spec/**/*"]

  s.add_dependency 'rails', '3.2.6'
  s.add_dependency 'ckeditor', '3.7.1'
  s.add_dependency 'sass'
  s.add_dependency 'sass-rails'
  s.add_dependency 'dynamic_form'
  s.add_dependency 'state_machine'
  s.add_dependency 'aasm'
  s.add_dependency 'rake', '~>10.0.2'

  s.add_development_dependency 'mysql2', '~> 0.3.11'
  s.add_development_dependency 'rails',  '~>3.2.6'
  s.add_development_dependency 'ckeditor', '3.7.1'
  s.add_development_dependency 'sass'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'dynamic_form'
  s.add_development_dependency 'state_machine'
end