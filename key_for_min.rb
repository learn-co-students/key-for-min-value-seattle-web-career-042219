# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
   minimum_key = nil
   minimum_value = nil

   name_hash.each { |name, number|
       if minimum_value == nil || number < minimum_value
           minimum_value = number
           minimum_key = name
       end
   }

   return minimum_key
end
