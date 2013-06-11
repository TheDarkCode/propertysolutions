
class PropertySolutions::ApiConsumer
  
  def self.request(base, method, data)

    data.delete_if { |k,v| v.nil? }    
    data = {
      "auth" => {
        "type"      => "basic",
        "username"  => PropertySolutions::username,
        "password"  => PropertySolutions::password,
      },
      "method" => {
        "name"    => method,  # required_service_name
        "params"  => data     # use the parameters required for the web service here
      }
    }
    
    resp = Typhoeus::Request.new(
        "#{PropertySolutions::domain}.propertysolutions.com/api/#{base}",
        'method'    => :post,
        'headers'   => { "Content-type": "application/json, charset: utf-8" },
        'params'    => data       
      ).run
 
    return resp
  end

end
