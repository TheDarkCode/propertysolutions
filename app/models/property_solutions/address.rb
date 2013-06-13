
module PropertySolutions
  class Address
    
    attr_accessor :address, :city, :state, :zip, :country  
    
    def initialize(arr = nil)
      if (arr.nil?)
        @address  = "" 
        @city     = "" 
        @state    = "" 
        @zip      = "" 
        @country  = ""
      else
        parse(arr)
      end
    end
    
    def parse(arr)
      @address  = arr['Address']      || "" 
      @city     = arr['City']         || ""
      @state    = arr['State']        || ""
      @zip      = arr['PostalCode']   || ""
      @country  = arr['Country']      || ""
    end
  end
end
