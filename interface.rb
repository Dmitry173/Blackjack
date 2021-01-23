class Interface

  def lets_go
    line
    puts 'Welcome to Black<21>Jack'
    line
    puts 'Введите своё имя и начнем:'
    gets.chomp
  end

  def gamers_turn
    line
    puts 'Выберите действие:'
    puts '1 - Пропустить.'
    puts '2 - Взять одну карту.'
    puts '3 - Открыть карты.'
    line
  end

  def dealers_turn
    puts 'Диллер завершил свой ход.'
    line
  end

  def dealer_extra
    puts 'Диллер взял карту.'
    line
    puts 'Перейдем к результатам'
    line
  end

  def player_extra
    line
    puts 'Вы взяли дополнительную карту.'
    line
  end

  def show_player(user)
    puts "Результаты #{user.name}:"
  end

  def show_cards_score(user)
    puts "Текущие очки: #{user.count_score}"
    user.current_cards.each { |card| puts "#{card.lear} #{card.name} " }
    line
  end

  def current_money(money)
    puts "Ваши текущие деньги: #{money}"
  end

  def gamer_won
    puts 'Вы победили!'
  end

  def dealer_won
    puts 'Победил Дилер.'
  end

  def draw
    puts 'Ничья!'
  end

  def play_again?
    puts 'Раунд окончен. Продолжить игру?'
    puts '1. Да'
    puts '2. Нет'
    line
  end

  def lose_money
    puts 'Недостаточно денег для продолжения игры.'
    exit
  end

  def dealers_turned?
    puts 'Диллер еще не сделал свой ход.'
  end

  def chose_action
    gets.chomp.to_i
  end
end

  def line
    puts '---------------------------------'
  end
