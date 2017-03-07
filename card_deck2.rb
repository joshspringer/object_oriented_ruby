class Deck
@@remaining_cards = 3

  attr_reader :card1

  def initialize(variable)
    @@array = []
    variable.each do |q, a|
      @@array << Card.new(q, a)

    end


  end

  def remaining_cards
    @@remaining_cards
  end
  def draw_card
    @@remaining_cards -= 1
    card = @@array.pop
    return card
  end

end

class Card

  attr_reader :answer
  def initialize(q, a)
    @question = q
    @answer = a
  end

  def question
    return @question
  end

end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}


deck = Deck.new(trivia_data) # deck is an instance of the Deck class
p deck.card1
while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end
