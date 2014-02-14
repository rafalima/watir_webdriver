def retorna_sum(num1, num2)
	num1 + num2
end	


def for_example
	array = ["Meddle", "The Wall","DSOT","Pulse"]

	array.length.times do |x|
		puts array[x]
	end

	array.length.times { |x| puts array[x] }


end


def for_each_example
	array = ["Meddle", "The Wall","DSOT","Pulse"]

	array.each { |x| puts x }

end


def ruby_hash
	hash = {:album => "Meddle", :banda => "Pink Floyd"}
	#hash = {album: "Meddle", banda: "Pink Floyd"}

	puts hash[:album]

end

def arrayBool
	arrayBool = [false, false, true, false]

	puts arrayBool.any?

end	

arrayBool