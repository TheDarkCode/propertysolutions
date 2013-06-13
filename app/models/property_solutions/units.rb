
module PropertySolutions
  class Units < PropertySolutions::ApiConsumer
  
    @@field_order = 'id'
    @@base = 'propertyunits'
    
 	  ## Returns a list of unit types for a given property id
 	  #def self.unit_types(property_id)
 	  #  return self.request('getUnitTypes', {
 	  #    'propertyId' => property_id
 	  #  })
 	  #end
 	  #
 	  ## Pulls a Specials/Concessions for the propertyId passed.
 	  #def self.specials(property_id)
 	  #  return self.request('getSpecials', {
 	  #    'propertyId' => property_id
 	  #  })
 	  #end
 	  
 	  # Pulls a list of Unit availability and their pricing
 	  def self.where(options)
 	    resp = self.request('getUnitsAvailabilityAndPricing', {
 	      'propertyId'         => options['property_id'],   # [Integer] required
 	      'floorplanId'        => options['floor_plan_id'], # [Integer] optional
 	      'unitTypeId'         => options['unit_type_id'],  # [Integer] optional
 	      'propertyUnitId'     => options['unit_id'],       # [Integer] optional
 	      'availableUnitsOnly' => options['available']      # [Boolean] optional
 	    })
 	    return resp
 	    #return [] if !resp || resp['PhysicalProperty'].nil? || resp['PhysicalProperty']['Property'].nil?
      #units = resp['PhysicalProperty']['Property'].collect { |p| Property.new(p) }
      #units = self.sort(units)
      #return units
 	  end
    
    ## Pulls a list of Amenities
    #def self.amenities(property_id, unit_number = nil)
    #  return self.request('getAmenities', {      
    #    'propertyId' => property_id,
    #    'unitNumber' => unit_number
    #  })
    #end
    
  end
end
