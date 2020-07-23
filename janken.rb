$hands = {
  0 => 'Rock',
  1 => 'Paper',
  2 => 'Scissors'
}
# get player's choice
class Player
  def get_gesture_name(hash, key)
    player_hand = hash[key]
    player_hand
  end

  def hand
    loop do
      puts 'Enter a number.'
      puts '0: Rock, 1: Paper, 2: Scissors'
      input_hand = gets.chomp.to_i
      if input_hand < 3
        $player_hand = get_gesture_name($hands, input_hand)
        break
      else
        puts 'Enter the number again.'
        # puts '0: goo, 1: choki, 2: par'
      end
    end
  end
end
# get computer's choice
class Enemy
  def hand
    $enemy_hand = $hands[rand($hands.length)]
  end
end
# Janken Decision
class Janken
  def pon(player_hand, enemy_hand)
    puts "You chose #{player_hand} and Computer chose  #{enemy_hand}."
  end

  def check_winner(player_hand, enemy_hand)
    message = 'Computer Win'
    if player_hand == 'Rock' && enemy_hand == 'Scissors'
      message = 'You Win'
    elsif player_hand == 'Paper' && enemy_hand == 'Rock'
      message = 'You Win'
    elsif player_hand == 'Scissors' && enemy_hand == 'Paper'
      message = 'You Win'
    elsif player_hand == enemy_hand
      message = 'Tie'
    end
    puts message
  end
end
loop do
  player = Player.new
  player.hand
  enemy = Enemy.new
  enemy.hand
  janken = Janken.new
  janken.pon($player_hand, $enemy_hand)
  janken.check_winner($player_hand, $enemy_hand)
  puts 'Wants to play again, press any key. If you want to quit, press q'
  $dicision = gets.chomp
  $decision
  break if $dicision == 'q'
end
