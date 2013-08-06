#Blackjack command line game

puts "Welcome to my awesome Blackjack game"

def calculate_total(cards)
  #[["H","3"],["C","K"],["S","2"]]
end

suits = ["H","D","C","S"]

cards = ["2","3","4","5","6","7","8","9","J","Q","K","A"]

deck = suits.product(cards)
deck.shuffle!

mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

# show cards

mytotal = 0
dealertotal = 0

dealertotal = calculate_total(dealercards)
mytotal = calculate_total(mycards)

puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}, for a total of#{dealertotal}"
puts "You have: #{mycards[0]} and #{mycards[1]}, for a total of#{mytotal}"
puts ""
puts "What would you like to do? 1)hit 2(stay"
hit_or_stay = gets.chomp




=begin this is an alternative way of doing this.  The array had a method called product.
method that can be used for arrays.
deck = []
 suits.each do |suit|
  cards.each do |card|
    deck << [suit,card]
  end
end
=end
