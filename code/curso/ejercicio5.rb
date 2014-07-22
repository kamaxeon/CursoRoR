require 'net/http'
require 'json'

json = Net::HTTP.get('www.json-generator.com', '/api/json/get/bRMkpEJWqa')
gente = JSON.parse(json)

# Promoción exclusiva: la primera línea de una posible solución de regalo
nombres = gente.map {|p| p['nombre']}

puts 'Los nombres compuestos ordenados por longitud son:'
puts "..."

puts 'Las personas con más de un hermano, ordenadas por edad son:'
puts "..."

puts 'Las personas con algún hermano en la lista son:'
puts "..."
