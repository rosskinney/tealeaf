puts " Type as many words as you like and I will sort them for you!."

word_array = [] #initalize an empty array

while true
  get_word = gets.chomp
  if get_word != ''
    word_array.push get_word
  else
    # no input was received, exit the program.
    break
  end
end

# print the array of words in sorted order
puts "Here is the list of words you entered sorted oh so nicely for you"
puts word_array.sort
