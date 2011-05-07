require 'spec_helper'

describe CodeJam::Runner do
  
  let(:rnr) { CodeJam::Runner.new("3\n1one\n2two\n3three", CodeJam::TestCase) }
  
  it "should keep onto the input size" do
    rnr.testcases.size.should == 3
  end
  
  it "should keep onto the input" do
    rnr.testcases.should =~ [
      CodeJam::TestCase.new('1one'), 
      CodeJam::TestCase.new('2two'),
      CodeJam::TestCase.new('3three')]
  end
  
  it "should make the correct output" do
    rnr.run.should == "Case #1: 1one\nCase #2: 2two\nCase #3: 3three"
  end
  
end