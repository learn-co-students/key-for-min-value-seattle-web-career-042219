# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  smallest_value = nil
  key = nil
  name_hash.each do |one,two|
    if smallest_value == nil || two < smallest_value
   smallest_value = two
   key = one
  end
 end
 key
end 
 
   