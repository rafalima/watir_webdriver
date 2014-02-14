class Pessoa
	attr_accessor :name, :last_name

	def initialize(name, last_name)
		self.name = name
		self.last_name = last_name
	end

	def full_name
		self.name + " " + self.last_name
	end

end

p = Pessoa.new("rafael", "lima")
puts p.full_name
