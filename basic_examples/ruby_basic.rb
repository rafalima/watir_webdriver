puts "Rafael".class
puts 1.class

nome = :rafael
puts nome.class
nome = 1.1
puts nome.class

puts [1,2,3].class

nome = "Rafael"

puts nome.reverse
puts nome.downcase
puts nome.upcase
puts nome.upcase.capitalize
nome.reverse!
puts nome


#loop

10.times { |x| puts x }

(23..32).each { |x| puts x }


#Symbol vs String

10.times do
	puts "String".object_id
end


10.times do
	puts :string.object_id
end
