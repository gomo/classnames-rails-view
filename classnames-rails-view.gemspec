$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'classnames/rails/view/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'classnames-rails-view'
  s.version     = Classnames::Rails::View::VERSION
  s.authors     = ['Masamoto Miyata']
  s.email       = ['miyata@sincere-co.com']
  s.homepage    = 'https://github.com/gomo/classnames-rails-view'
  s.summary     = 'The helper method to dynamically generate class attribute of HTML tag.'
  s.description = "Make methods similar to Javascript 's classnames available in the rails erb template."
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.require_paths = ['lib']

  s.add_dependency 'rails', '>= 5.0', '<= 6.1'

  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'pry-doc'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'pry-stack_explorer'
  s.add_development_dependency 'rails-controller-testing'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
end
