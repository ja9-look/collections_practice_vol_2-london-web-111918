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