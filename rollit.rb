class Array
    def sum
        self.inject{|memo,n| memo + n }
    end
end

def roll
	dice = "2d100"
	match = /(?<a>\d+)[d](?<f>\d+)/.match(dice)
	amount = match[1].to_i
	faces = match[2].to_i  
	roll = amount.times.collect { rand(1..faces) }
	puts = 'Rolled ' + dice + ' and results are: ' + roll.to_s + ' | Total is: ' + roll.sum.to_s
end
