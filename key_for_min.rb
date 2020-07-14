# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  target_value = 0
  target_key = nil
  i = 0
  name_hash.each do |key, value|
    if i == 0
      target_value = value
      target_key = key
    elsif target_value > value
      target_value = value
      target_key = key
    end
    i += 1
  end
  target_key
end