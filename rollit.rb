
  
  roll = "1d6"
  /(?<amount>)\d(?<faces>)/ =~ roll
  amount.to_i
  faces.to_i
  amount.times do |i|
    rollit = rand(faces)
    puts rollit
  end
  