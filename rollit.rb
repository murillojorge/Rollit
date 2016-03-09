class Array
    def sum
        self.inject{|memo,n| memo + n }
    end
end

class Rollit
	
	attr_reader :dice
	
	def initialize(dice)
		@dice = dice
	end
	
	def roll
		regex = /(\d+)[d](\d+)/.match(dice)
		amount = regex[1].to_i
		faces = regex[2].to_i
    	rolling = amount.times.collect { rand(1..faces) }
		total = rolling.sum
		puts = 'Rolled ' + dice + ' and results are: ' + rolling.to_s + ' | Total is: ' + total.to_s
  	end
	
end



