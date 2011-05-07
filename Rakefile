$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "codejam/version"

begin
  require 'rspec/core/rake_task'
rescue LoadError
  puts 'To use rspec for testing you must install rspec gem:'
  puts 'gem install rspec'
  exit
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.rspec_opts = ['--color']
end

RSpec::Core::RakeTask.new(:specdoc) do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.rspec_opts = ['--color --format documentation']
end