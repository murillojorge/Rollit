
  roll = "2d6"
  match = /(?<a>\d+)[d](?<f>\d+)/.match(roll)
  amount = match[1].to_i
  faces = match[2].to_i
  amount.times do |i|
    rollit = rand(faces)
    puts rollit
  end
  