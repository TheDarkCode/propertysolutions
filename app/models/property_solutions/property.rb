
module PropertySolutions  
  class Property
    
    attr_accessor :id, :name, :type, :short_desc, :long_desc, :website, :address, :phone, :disabled
    
    def initialize(arr)
      if (arr.nil?)
        @id          = ""
        @name        = ""
        @type        = ""
        @short_desc  = ""
        @long_desc   = ""
        @website     = ""
        @address     = Address.new
        @phone       = Phone.new
        @disabled    = false
      else
        parse(arr)
      end
    end
  
    def parse(arr)
      @id          = arr['PropertyID']        || "" 
      @name        = arr['MarketingName']     || ""
      @type        = arr['Apartment']         || ""
      @short_desc  = arr['ShortDescription']  || ""
      @long_desc   = arr['LongDescription']   || ""
      @website     = arr['webSite']           || ""
      @address     = Address.new(arr['Address'])
      @phone       = Phone.new(arr['Phone'])
      @disabled    = arr['IsDisabled']        || ""
    end
        
  end
end
