require 'net/http'
require 'json'

json = Net::HTTP.get('www.json-generator.com', '/api/json/get/bRMkpEJWqa')

gente = JSON.parse(json)

puts gente
