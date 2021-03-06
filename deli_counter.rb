def line(deli)
  if deli.empty?
     puts "The line is currently empty."
   else
     # Uses index & element to created numbered list then convert to string
     queue_list = deli.map.with_index{|name, index| "#{index + 1}. #{name}"}.join(' ')

     puts "The line is currently: #{queue_list}"
  end
end

def take_a_number(deli, name)
  deli << name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    # Permenantly remove the first name on the list and show that name as well
    puts "Currently serving #{deli.shift}."
  end
end
