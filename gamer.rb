require_relative 'user'

class Gamer < User

  attr_accessor :name

  def initialize(name = 'gamer')
    super(@name = name)
  end
end
