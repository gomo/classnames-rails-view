# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'classnames/rails/view/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.required_ruby_version = '>= 2.6.0'
  s.name        = 'classnames-rails-view'
  s.version     = Classnames::Rails::View::VERSION
  s.authors     = ['Masamoto Miyata']
  s.email       = ['miyata@sincere-co.com']
  s.homepage    = 'https://github.com/gomo/classnames-rails-view'
  s.summary     = 'The helper method to dynamically generate class attribute of HTML tag.'
  s.description = "Make methods similar to Javascript 's classnames available in the rails erb template."
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md', 'CHANGELOG.md']
  s.require_paths = ['lib']

  s.add_dependency 'rails', '>= 5.0', '< 8.2'

  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'pry-doc'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'pry-stack_explorer'
  s.add_development_dependency 'rails-controller-testing'
  s.add_development_dependency 'rspec', '~> 3.13'
  s.add_development_dependency 'rspec-rails', '~> 8.0'
  s.add_development_dependency 'rubocop', '~> 1.0'
  s.add_development_dependency 'rubocop-rails'
  s.add_development_dependency 'sprockets-rails'
  s.add_development_dependency 'sqlite3', '~> 2.1'
end
