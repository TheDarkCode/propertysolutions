
module PropertySolutions  
  class Unit
    
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
      @number           = arr["@attributes"]["UnitNumber"]      || ""
      @unit_id          = arr["@attributes"]["PropertyUnitId"]  || ""
      @unit_type_id     = arr["@attributes"]["UnitTypeId"]      || ""
      @floor_plan_id    = arr["@attributes"]["FloorplanId"]     || ""
      @floor_plan_name  = arr["@attributes"]["FloorPlanName"]   || ""
      @availability     = arr["@attributes"]["Availability"]    || ""
      
#      arr["Rent"]
#      
#        },
#        "Rent"=>{
#          "TermRent"=>[
#            {"@attributes"=>{"LeaseTerm"=>6, "Rent"=>"0.00"}},
#            {"@attributes"=>{"LeaseTerm"=>12, "Rent"=>"0.00"}},
#            {"@attributes"=>{"LeaseTerm"=>18, "Rent"=>"0.00"}}
#          ],
#         "@attributes"=>{"MinRent"=>"0.00", "MaxRent"=>"0.00"}
#        },
#        "Deposit"=>{
#          "@attributes"=>{"MinDeposit"=>"0.00", "MaxDeposit"=>"200.00"}
#        }
#      },

    end
  end
end

#{
#  "ILS_Units"=> {
#    "Unit"=> [
#      {
#        "@attributes"=>{
#          "UnitNumber"=>"123-A", 
#          "FloorPlanName"=>"Two Bed/ Two Bath",
#          "Availability"=>"Not Available",
#          "FloorplanId"=>137634,
#          "UnitTypeId"=>"153497",
#          "PropertyUnitId"=>2422769
#        },
#        "Rent"=>{
#          "TermRent"=>[
#            {"@attributes"=>{"LeaseTerm"=>6, "Rent"=>"0.00"}},
#            {"@attributes"=>{"LeaseTerm"=>12, "Rent"=>"0.00"}},
#            {"@attributes"=>{"LeaseTerm"=>18, "Rent"=>"0.00"}}
#          ],
#         "@attributes"=>{"MinRent"=>"0.00", "MaxRent"=>"0.00"}
#        },
#        "Deposit"=>{
#          "@attributes"=>{"MinDeposit"=>"0.00", "MaxDeposit"=>"200.00"}
#        }
#      },
#      {
#        "@attributes"=>{
#          "UnitNumber"=>"123-B",
#          "FloorPlanName"=>"Two Bed/ Two Bath",
#          "Availability"=>"Not Available", 
#          "FloorplanId"=>137634, 
#          "UnitTypeId"=>"153497", 
#          "PropertyUnitId"=>2422769
#        },
#        "Rent"=>{
#          "TermRent"=>[
#            {"@attributes"=>{"LeaseTerm"=>6, "Rent"=>"0.00"}},
#            {"@attributes"=>{"LeaseTerm"=>12, "Rent"=>"0.00"}},
#            {"@attributes"=>{"LeaseTerm"=>18, "Rent"=>"0.00"}}
#          ],
#          "@attributes"=>{"MinRent"=>"0.00", "MaxRent"=>"0.00"}
#        },
#        "Deposit"=>{
#          "@attributes"=>{
#            "MinDeposit"=>"0.00", "MaxDeposit"=>"200.00"
#          }
#        }
#      }
#    ]
#  }
#}
