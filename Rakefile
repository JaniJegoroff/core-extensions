require 'rake/testtask'
require 'rubocop/rake_task'

desc 'Execute unit tests'
Rake::TestTask.new do |t|
  t.libs << 'spec'
  t.test_files = FileList['spec/**/spec_*.rb']
  t.verbose = true
end

desc 'Execute RuboCop static code analysis'
RuboCop::RakeTask.new(:rubocop) do |t|
  t.patterns = %w(lib/core-extensions/**/*.rb spec/**/*.rb)
  t.options = %w(-D)
  t.fail_on_error = false
end

task :default => :test