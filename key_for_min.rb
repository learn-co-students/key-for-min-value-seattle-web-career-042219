# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = 0
  min_key_index = 0
  value_array = []
  key_array = []

  if name_hash.length != 0
    name_hash.each do |key, value|
      value_array << value
      key_array << key
    end
    i = 0
    j = 1
    min_key = value_array[0]
    while (i < (value_array.length)) do
    if value_array[i] <= min_key
        min_key = value_array[i]
        min_key_index = i
        i += 1
        j += 1
    else
      i += 1
      j += 1
    end
  end
  end
  key_array[min_key_index]
end

hash = {blake: 500, ashley: 2, adam: 1}
puts key_for_min_value(hash)
hash_two = {blake: 10, ashley: 50, adam: 17}
puts key_for_min_value(hash_two)
