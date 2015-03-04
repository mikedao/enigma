def generate_key
  random = rand(99999)
  if random < 10000
    random.to_s.rjust(5,"0")
  else
    random.to_s
  end

end

puts generate_key

