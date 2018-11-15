def begins_with_r(tools)
  i = 0 
  new_tools = []
  while i < tools.length
    if tools.start_with?("r")
    new_tools.push(tools[i])
  end
  i += 1 
  end
  
  if new_tools.length == tools.length
    return true 
    return false 
end

end

def contain_a(elements)

end