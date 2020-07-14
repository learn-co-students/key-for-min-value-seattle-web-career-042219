# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value


def key_for_min_value(name_hash)
  compare_key = nil
  compare_value = 1000000000

  name_hash.collect do |key, value|
    if value < compare_value
      compare_key = key
      compare_value = value
    end
  end
  return compare_key
end
