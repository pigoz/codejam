module CodeJam
  
  class TestCase
    attr_reader :input
    
    def initialize(input)
      @input = input
    end
    
    def run
      fun
    end
    
    def fun
      input #default behaviour is echo
    end
    
    def ==(other)
      self.input == other.input
    end
  end
  
end