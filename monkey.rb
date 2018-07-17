class Monkey
	
	def initialize(firstname, species)
    	@firstname = firstname
    	@species = species
    	@tab = []
  	end

  	def name
  		@firstname.capitalize
  	end

  	def species
  		@species
  	end

  	def eat(nourriture)
  		if nourriture.count("aeiouy") > 0
  			return
  		end
  		@tab.push(nourriture)
  	end

 	def foods_eaten
 		return @tab
 	end

 	def introduce
 		return "my name is #{@firstname} and my species is #{@species} mt fvorite food is #{@tab}"
 	end
end

toto = Monkey.new("gin", "to")
toto.eat("ppsp")
toto.eat("annanas")

puts (toto.foods_eaten)