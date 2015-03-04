def generate_key
  random = rand(99999)
  if random < 10000
    random.to_s.rjust(5,"0")
  else
    random.to_s
  end
end

def offsets
  time = (Time.now.strftime("%d%m%y").to_i) ** 2
  short_offset = time.to_s[-4..-1]
  generated_key = generate_key
  offset = []
  offset << generated_key[0].to_i + generated_key[1].to_i + short_offset[0].to_i
  offset << generated_key[1].to_i + generated_key[2].to_i + short_offset[1].to_i
  offset << generated_key[2].to_i + generated_key[3].to_i + short_offset[2].to_i
  offset << generated_key[3].to_i + generated_key[4].to_i + short_offset[3].to_i
  offset
end

def file_open
  File.read(ARGV[0])
end

def encrypt
  plaintext = file_open[0..-2] << "..end.."

end



puts "Generated Random Key: #{generate_key}"
puts "Time encoded: #{offsets}"

puts encrypt

