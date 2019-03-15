# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
smallest_k = ""
smallest_v = 1000

if name_hash.size < 1
  return nil
end
name_hash.each do |name, value|
  if value < smallest_v
    smallest_v = value
    smallest_k = name
  end
end
smallest_k
end
