# 2 => 1
# 3 => 2
# 5 => 2
# 7 => 3

# Try - 1
def count_bits(n)
  bits_count = 0
  n.to_s(2).each_char do |char|
    bits_count += 1 if char == "1"
  end
  
  bits_count
end

# Try - 2
def count_bits(n)
  n.to_s(2).count("1")
end
