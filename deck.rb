class Card
  attr_reader :question, :answer
  
  def initialize(question, answer)
  end

end

class Deck
  attr_reader :card1, :card2, :card3
  
  def initialize(input)
    @deck = input
    @card1 = input.keys[0], input.values[0]
    @card2 = input.keys[1], input.values[1]
    @card3 = input.keys[2], input.values[2]
  end

  def remaining_cards
    @deck.length
  end

  def draw_card
    card.rand
  end


  card1 = Card.new()
  card2 = Card.new(deck.card2[0], deck.card2[1])
  card3 = Card.new(deck.card3[0], deck.card3[1])
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}
# # p trivia_data.keys[0]


deck = Deck.new(trivia_data) # deck is an instance of the Deck class
# p deck
p deck.card1
# while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
# end
