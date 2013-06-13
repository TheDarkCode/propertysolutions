
class PropertySolutions::ApiConsumer
  
  @@field_order = 'id'
  @@base = ''
  
  def self.request(method, data = nil)

    data = {} if data.nil?
    data.delete_if { |k,v| v.nil? }
    
    data = {
      'auth' => {
        'type'     => "basic",
        'username' => PropertySolutions::username,
        'password' => PropertySolutions::password,
      },
      'method' => {
        'name'   => method, # required_service_name
        'params' => data # parameters required for the web service
      }
    }

    resp = Typhoeus::Request.new(
        "https://#{PropertySolutions::domain}.propertysolutions.com/api/#{@@base}",
        method:   :post,
        headers:  { 'Content-type' => 'application/json, charset: utf-8' },
        body:     data.to_json       
      ).run
    resp = JSON.parse(resp.response_body)
    if (resp['response'].nil? || !resp['response']['error'].nil? || resp['response']['result'].nil?)
      return false
    end
    return resp = resp['response']['result']
  end
  
  def self.sort(arr)
    return arr.sort { |x,y| x.send(@@field_order.to_sym) <=> y.send(@@field_order.to_sym) }
  end

end
