Gem::Specification.new do |gem|
  gem.name        = 'cm-sketch'
  gem.version     = '0.1'
  gem.date        = '2014-04-28'
  gem.summary     = "Ruby Count Min Sketch Library"
  gem.description = "See summary"
  gem.authors     = ["Chris Boursnell"]
  gem.email       = 'cmb211@cam.ac.uk'
  gem.files       = ["lib/cm-sketch.rb"]
  gem.require_paths = %w( lib )
  gem.homepage    = 'http://rubygems.org/gems/cm-sketch'
  gem.license     = 'MIT'

  gem.add_dependency 'rake'
  gem.add_dependency 'trollop'

  gem.add_development_dependency 'turn'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'shoulda-context'
  gem.add_development_dependency 'coveralls', '>= 0.6.7'
end