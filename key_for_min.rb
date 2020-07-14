# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'

def key_for_min_value(name_hash)
  if name_hash == {}
    nil
  else
  lowest_value = nil
  lowest_key = nil
    name_hash.each do |name, value|
      if lowest_value == nil || value < lowest_value
        lowest_key = name
        lowest_value = value
      end
    end
    lowest_key
  end
end
