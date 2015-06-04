# Write your code here.
katz_deli = []

def take_a_number(deli_line, name)
  puts "Welcome, #{name}. You are number #{deli_line.length+1} in line."
  katz_deli = deli_line << name
end

def now_serving(deli_line)
  name = deli_line.shift()
  if (name == nil)
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{name}."
  end
end

def line(deli_line)
  if (deli_line.length == 0)
    puts "The line is currently empty."
  else
    str = "The line is currently:"
    deli_line.each.with_index {|name, i|
      str = str << " " << (i+1).to_s << ". #{name}"
    }
    puts str
  end
end