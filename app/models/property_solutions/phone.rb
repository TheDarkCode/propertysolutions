
module PropertySolutions
  class Phone
    
    attr_accessor :number, :description
    
    def initialize(arr = nil)
      if (arr.nil?)
        @number = ""
        @description = ""
      end
    end
    
    def parse(arr)
      @number       = arr["PhoneNumber"]      || ""
      @description  = arr["PhoneDescription"] || ""
    end
  
  end
end
