def key_for_min_value(name_hash)
  if name_hash.empty? ==true
  else
    smallest = 1000000
    actual = 'nil'
    name_hash.each do |name, value|
      if value < smallest==true
        smallest = value
        actual = name
      end
    end
  end
  actual
end
