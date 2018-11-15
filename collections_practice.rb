def begins_with_r(tools)
  tools.all? {|tool| tool.start_with?("r")}
end

def contain_a(elements)
  elements.all? {|element| element.include?("a")}
end