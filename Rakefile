require 'rake/testtask'
require 'rspec/core/rake_task'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end

task :default => :spec

task :spec do
  RSpec::Core::RakeTask.new(:spec)
end
