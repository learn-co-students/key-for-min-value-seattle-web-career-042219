# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
#{:blake => 10, :ashley => 50, :adam => 17}
def ages_to_array(name_hash)
  ages_array = []
  name_hash.each_value {|age| ages_array.push(age)}
  return ages_array
end

def age_sort(list)
  return list if list.size <= 1
  loop do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i]
        swapped = true
      end
    end
    break unless swapped
  end
  list
end

def key_for_min_value(name_hash)
  return nil if name_hash.length == 0
  ages_array = ages_to_array(name_hash)
  sorted_ages = age_sort(ages_array)
  name_hash.each_with_index do |(name, age), index|
    if age == sorted_ages[0]
      return name
    end
  end
end


print key_for_min_value({:blake => 100, :ashley => 50, :adam => 17})
