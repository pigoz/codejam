# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'codejam/version'

Gem::Specification.new do |s|
  s.name = 'codejam'
  s.version = CodeJam::VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = 'Runs codejam test cases'
  s.description = %{Runner library for Google's Codejam}
  #
  s.author = 'Stefano Pigozzi'
  s.email = 'stefano.pigozzi@gmail.com'
  s.homepage = 'https://github.com/pigoz/codejam'
  #
  s.files = Dir.glob("**/{bin,lib}/**/*")
  s.require_path = 'lib'
  #
  s.has_rdoc = true
end