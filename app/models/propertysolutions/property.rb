
class PropertySolutions::Properties < PropertySolutions::ApiConsumer
  
  @base = 'properties'
  
  def floor_plans(property_id, property_floor_plan_ids = nil)
    return self.request('getFloorPlans', { 
      'propertyId' => property_id,
      'propertyFloorPlanIds' => property_floor_plan_ids
    })
  end
  
  def pet_types(property_ids)
    return self.request('getGetTypes', { 
      'propertyIds' => property_ids 
    })
  end
  
  def rentable_items(property_id)
    return self.request('getRentableItems', { 
      'propertyId' => property_id 
    })
  end
  
  def property_pick_lists(property_ids)
    return self.request('getPropertyPickLists', { 
      'propertyIds' => property_ids 
    })
  end
  
  def properties(property_ids = nil)
    return self.request('getPropertyPickLists', { 
      'propertyIds' => property_ids 
    })
  end
  
  def property_preferences(property_id, keys = nil)
    return self.request('getPropertyPreferences', { 
      'property_id' => property_id
      'keys' => keys
    })
  end
end
