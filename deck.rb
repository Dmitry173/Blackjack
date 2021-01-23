require_relative 'card'

class Deck
  
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11].freeze
  LEARS = %w[♠(Пика) ♥(Черва) ♦(Бубна) ♣(Трефа)].freeze
  CARD_NAMES = %w[2 3 4 5 6 7 8 9 10 Jack(10) Queen(10) King(10) Ace(1or11)].freeze

  attr_accessor :cards

  def initialize
    @cards = []
    create_deck
  end

  def shuffle!
    @cards.shuffle!
  end

  private

  def create_deck
    LEARS.each do |lear|
      CARD_NAMES.each_with_index do |name, index|
        @cards << Card.new(name, lear, VALUES[index])
      end
    end
  end
end
