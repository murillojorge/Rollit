class Array
    def sum
        self.inject{|memo,n| memo + n }
    end
end
dice = "3d20"
match = /(?<a>\d+)[d](?<f>\d+)/.match(dice)
amount = match[1].to_i
faces = match[2].to_i  
roll = amount.times.collect { rand(1..faces) }
puts roll.inspect
puts roll.sum
