def begins_with_r(tools)
  tools.all? {|tool| tool.start_with?("r")}
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  array.find {|element| element.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  new_array = []
  array.each {|element| new_array << array.count(element)}
  count = 0 
  
  array.each do |element|
    element[:count] = new_array[count]
    count += 1 
  end
  array.uniq 
end

def merge_data(keys, data)
  array1 = []
  array2 = []
  
  keys.each do |hash|
    array1 << hash
  end
  
end


