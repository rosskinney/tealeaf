# Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |a|
  puts a
end
puts ""
# Same as above, but only print out values greater than 5.
arr.each do |a|
  if a > 5
    puts a
    # or puts a if a > 5
  end
end  # a do end specifies a block of code...

puts ""

# or
arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr1.each { |a| puts a } # if your code can fit on 1 line, use curly braces

puts ""

# or
arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr2.each { |a| puts a if a > 5 }

arr3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_arr = arr3.select do |a| # key thing to remember, select method returns, true of false
  a % 2 != 0 # mod, checks if there is a remainder of the operation or

end

puts "odd array "
puts odd_arr

# or

odd_arr1 = arr3.select {|a| a.odd? }

puts ""
puts "odd array1 "
puts odd_arr1

#Append 11 to the end of the array, prepend 0 to the beginning....

arr.push(11) or
arr << 11 #shovel operator

puts arr

arr.unshift(0)
puts ""
puts arr
puts ""

# get rid of 11 and append a 3

arr.pop
arr << 3

puts arr
puts ""

arr.uniq!
puts arr
puts ""

#ruby methods always returns something, even if it is nil
# if I want to mutate the caller use the bang ! operator
#whats the major difference between an array and a hash?
#arrays maintain order, hashes to do not, the order of hashes is not guaranteed
#hash is a key value store, array is indexed based store
#hashes require keys to be unique

h = {:a => 1,:b => 2 } #1.8 syntax

puts h
h[:b]
puts h

h = {a: 1, b: 2} #1.9 syntax


puts h

h = {a: 1, b: 2, c: 3, d: 4}
puts h

#append e with a value of 5

h[:e] = 5
puts h

h = {a: 1, b: 2, c: 3, d: 4, e: 5}

puts h

h.each do |k,v|
  if v < 3.5
    h.delete(k)
  end
end

puts h

#or

h.delete_if do |k,v|
  v < 3.5
end
puts h
# or
h.delete_if {|k,v| v < 3.5}

puts h

#can hash values be arrays, what would that look like? Yes.

h = {a: 1, b: 2, c: 3, d: 4, e: 5}

h[:f] = [9,10,11]

puts h

#output from 117-125
#{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>[9, 10, 11]}

#Can you have an array of hashes? Yes.

arr = [{x: 22},{y: 23}, h]

p arr

#output from 132-134
#[{:x=>22}, {:y=>23}, {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>[9, 10, 11]}]













