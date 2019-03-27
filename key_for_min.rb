# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  key = nil
  num = nil
  name_hash.each do |name, value|
    if num == nil
      num = value
      key = name
    elsif value < num
      num = value
      key = name
    end
  end
  key
end
