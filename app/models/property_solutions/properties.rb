
module PropertySolutions
  class Properties < PropertySolutions::ApiConsumer
    
    @@field_order = 'id'
    @@base = 'properties' 
  
    # Find a property given a property ID
    def self.find(property_id)
      resp = self.request('getProperties', {
        'propertyIds' => [property_id]
      })
      return nil if !resp || resp['PhysicalProperty'].nil? || resp['PhysicalProperty']['Property'].nil?
      prop = Property.new(resp['PhysicalProperty']['Property'][0]) 
      return prop
    end
    
    # Reorder the properties that will be returned based on the given field
    def self.reorder(field)
      @@field_order = field 
      return self
    end
    
    # Return all the properties
    def self.all
      return self.properties
    end
    
    # Return all the properties
    def self.properties(property_ids = nil)
      resp = self.request('getProperties', {
        'propertyIds' => property_ids
      })
      return [] if !resp || resp['PhysicalProperty'].nil? || resp['PhysicalProperty']['Property'].nil?
      props = resp['PhysicalProperty']['Property'].collect { |p| Property.new(p) }
      props.sort! { |x,y| 
        x.send(@@field_order.to_sym) <=> y.send(@@field_order.to_sym) 
      }
      return props
    end
    
    #def self.floor_plans(property_id, property_floor_plan_ids = nil)
    #  return self.request('getFloorPlans', { 
    #    'propertyId' => property_id,
    #    'propertyFloorPlanIds' => property_floor_plan_ids
    #  })
    #end
    #
    #def self.pet_types(property_ids)
    #  return self.request('getGetTypes', { 
    #    'propertyIds' => property_ids 
    #  })
    #end
    #
    #def self.rentable_items(property_id)
    #  return self.request('getRentableItems', { 
    #    'propertyId' => property_id 
    #  })
    #end
    #
    #def self.property_pick_lists(property_ids)
    #  return self.request('getPropertyPickLists', { 
    #    'propertyIds' => property_ids 
    #  })
    #end
    #
    #def self.property_preferences(property_id, keys = nil)
    #  return self.request('getPropertyPreferences', { 
    #    'property_id' => property_id,
    #    'keys' => keys
    #  })
    #end
  
  end
end
