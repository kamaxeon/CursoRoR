require 'net/http'
require 'json'

json = Net::HTTP.get('www.json-generator.com', '/api/json/get/bRMkpEJWqa')

people = JSON.parse(json)




def get_compuesto(people)
  names = []
  people.each do |person|
   names << person["nombre"] if person["nombre"].include? " "
  end
  names.sort_by{|x| x.length}
end

def get_brothers(people)
  result = []
  people.each do |person|
    if person.has_key? "hermanos"
      result << person if person["hermanos"].length > 1
    end
  end
  result.sort_by{|x| x["edad"]}
end


def has_brother_in_list(people, brothers)
  return false if brothers == nil or brothers.length == 0
  people.each do |person|
    return true if brothers.include? person["nombre"]
  end
  false
end

def get_brothers_in_list(people)
  result = []
  people.each do |person|
    result << person["nombre"] if has_brother_in_list(people, person["hermanos"]) 
  end
  result
end

puts "uno"
puts get_compuesto(people) 
puts "dos"
puts get_brothers(people)
puts "tres"
puts get_brothers_in_list(people)
