class Array
    def sum
        self.inject{|memo,n| memo + n }
    end
end

class Rollit
	
	attr_reader :dice, :amount, :faces
	
	def initialize(dice)
		@dice = dice
	end
	
	def regex
		/(?<a>\d+)[d](?<f>\d+)/.match(dice)
		@amount = amount
		@faces = faces
		amount = match[1].to_i
		faces = match[2].to_i 
	end
	
	def roll
    	amount.times.collect { rand(1..faces) }
  	end
end

#puts = 'Rolled ' + @dice + ' and results are: ' + roll + ' | Total is: ' + roll

