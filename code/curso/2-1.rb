
palabras =  []

5.times do 
  puts "Dime una palabra"
  #palabras.push(gets.chomp)
end

palabras.each do |palabra|
  puts palabra if palabra.size > 5 
end
