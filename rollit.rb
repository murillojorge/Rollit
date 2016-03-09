class Array
    def sum
        self.inject{|memo,n| memo + n }
    end
end

class Rollit
	
	attr_reader :dice, :amount, :faces
	
	def initialize(dice, amount, faces)
		@dice = dice
		@amount = amount
		@faces = faces
	end
	
	def regex
		/(\d+)[d](\d+)/.match(dice)
		amount = match[1].to_i
		faces = match[2].to_i 
	end
	
	def roll
    	amount.times.collect { rand(1..faces) }
  	end
	
end

#puts = 'Rolled ' + dice + ' and results are: ' + roll.to_s + ' | Total is: ' + roll.to_s

