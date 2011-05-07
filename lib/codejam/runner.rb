module CodeJam

  class Runner
    attr_reader :testcases
    
    def initialize(input, caseclass)
      num, *lines = input.split("\n")
      raise "Invalid input: wrong number of testcases" if num.to_i != lines.size
      @testcases = lines.map {|n| caseclass.new(n)}
    end
    
    def run
      testcases.each_with_index.inject("") do |r, (n, i)|
        r + (i+1==1 ? "" : "\n") + "Case ##{i+1}: #{n.run}"
      end
    end
  end # /class
  
end