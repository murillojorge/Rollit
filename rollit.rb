
  roll = "1d6"
  /(?<amount>)\d(?<faces>)/ =~ roll

  amount.times do |i|
    rollit = rand(faces)
    puts rollit
  end
  