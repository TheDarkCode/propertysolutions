
class PropertySolutions::Properties < PropertySolutions::ApiConsumer

  def self.floor_plans(property_id, property_floor_plan_ids = nil)
    return self.request('properties', 'getFloorPlans', { 
      'propertyId' => property_id,
      'propertyFloorPlanIds' => property_floor_plan_ids
    })
  end
  
  def self.pet_types(property_ids)
    return self.request('properties', 'getGetTypes', { 
      'propertyIds' => property_ids 
    })
  end
  
  def self.rentable_items(property_id)
    return self.request('properties', 'getRentableItems', { 
      'propertyId' => property_id 
    })
  end
  
  def self.property_pick_lists(property_ids)
    return self.request('properties', 'getPropertyPickLists', { 
      'propertyIds' => property_ids 
    })
  end
  
  def self.properties(property_ids = nil)
    return self.request('properties', 'getPropertyPickLists', { 
      'propertyIds' => property_ids 
    })
  end
  
  def self.property_preferences(property_id, keys = nil)
    return self.request('properties', 'getPropertyPreferences', { 
      'property_id' => property_id
      'keys' => keys
    })
  end

end
