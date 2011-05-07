require 'rspec'

require File.join(File.dirname(File.dirname(__FILE__)), "lib", "codejam.rb")
Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}
