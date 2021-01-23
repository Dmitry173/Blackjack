require_relative 'card'

class User

  attr_reader :current_cards, :score
  attr_accessor :money, :name

  def initialize(name = 'dealer')
    @money = 100
    @current_cards = []
    @score = 0
    @name = name
  end

  def bet
    @money -= 10
  end

  def count_score
    @score = 0
    @current_cards.each do |card|
    @score += card.value
    end
    two_ace.times { @score -= 10 if score > 21 }
    @score
  end

  def card_distribution(deck)
    2.times do
      take_card(deck)
    end
  end

  def take_card(deck)
    current_cards << deck.cards.delete_at(0)
  end

  private

  def two_ace
    @current_cards.count { |card| card.name == 'Ace' }
  end
end
