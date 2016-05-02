require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  result={}
  data.each do |attributes, attribute_data|
  	attribute_data.each do |attribute, names|
  		names.each do |name|
  			if result.has_key?(name)==false
  				result[name] = {}
  			end 
  			if result[name].has_key?(attributes)==false
  				result[name][attributes] = [attribute.to_s]
  			else 
  				result[name][attributes] << attribute.to_s
  			end
  		end 
  	end 
  end 
  result
end

