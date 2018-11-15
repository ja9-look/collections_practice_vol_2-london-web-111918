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
   array_one = []
   array_two = []
   keys.each do |hash|
     array_one << hash
   end
   data.each do |hashes|
     hashes.each do |key, merge_value|
       array_two << merge_value
     end
   end
   merged_array = array_one.map.with_index { |x, i| x.merge(array_two[i]) }
 end

def find_cool(hashes)
   cool_hashes = []
   hashes.each do |hash|
     hash.each do |key, value|
       if value == "cool"
         cool_hashes << hash
       end
     end
   end
   cool_hashes
 end


  def organize_schools(schools)
   new_hash = {}
   arr = []
   schools.each do |name, hash|
     hash.each do |location_key, location|
       if new_hash[location].nil?
         arr << name
         new_hash[location] = arr
         arr = []
       elsif new_hash[location]
         new_hash[location] << name
         arr = []
       end
     end
   end
   new_hash
 end


