require 'coveralls'
Coveralls.wear!

require 'minitest/autorun'
require 'minitest/reporters'

require 'core-extensions'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
