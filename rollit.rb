class Array
    def sum
        self.inject{|memo,n| memo + n }
    end
end

<<<<<<< HEAD
def roll
	dice = "4d4"
	match = /(\d+)[d](\d+)/.match(dice)
	amount = match[1].to_i
	faces = match[2].to_i  
	roll = amount.times.collect { rand(1..faces) }
	puts = 'Rolled ' + dice + ' and results are: ' + roll.to_s + ' | Total is: ' + roll.sum.to_s
=======
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
	
>>>>>>> objects
end



