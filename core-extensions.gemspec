require_relative 'lib/core-extensions/version'

Gem::Specification.new do |gem|
  gem.name          = 'core-extensions'
  gem.version       = CoreExtensions::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Jani Jegoroff']
  gem.email         = ['jani.jegoroff@gmail.com']
  gem.summary       = 'Core extensions.'
  gem.description   = 'Collection of simple Ruby core extensions.'
  gem.homepage      = 'http://github.com/JaniJegoroff/core-extensions'
  gem.license       = 'MIT'

  gem.files         = Dir.glob('lib/**/*.rb')
  gem.require_paths = ['lib']

  gem.test_files    = Dir.glob('spec/**/*.rb')

  gem.add_development_dependency 'rake', '~> 11.1'
  gem.add_development_dependency 'minitest', '~> 5.8'
  gem.add_development_dependency 'minitest-reporters', '~> 1.1'
  gem.add_development_dependency 'rubocop', '~> 0.40'
  gem.add_development_dependency 'coveralls', '~> 0.8'
end
