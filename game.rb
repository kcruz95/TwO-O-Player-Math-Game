require_relative "./players"
require_relative "./prompts"

class Game

  def initialize
    @player_one = Player.new("Deep Blue")
    @player_two = Player.new("Garry Kasparov / Гарри Каспаров")

    # randomise who starts
    @players = [@player_one, @player_two].shuffle
  end

  # current player
  def current_player
    @players.first
  end

  def display_scoreboard
    # display the lives
    puts "---------SCOREBOARD---------"
    puts "Name: #{@player_one.name} has #{@player_one.lives}/3 lives left"
    puts "Name: #{@player_two.name} has #{@player_two.lives}/3 lives left"
  end

  def next_round

      # display new round
      puts
      puts "---------NEW-TURN---------"
      puts "#{@player_one.name} vs #{@player_two.name}"
      puts

      # switch the player and repeat
      @players.rotate!
    
  end

  def game_over?

      @player_one.lives == 0 || @player_two.lives == 0

  end

  def play
    # puts @player_one.inspect
    # puts @player_two.inspect
  
    until (game_over?) do
      
      next_round

      prompts = Prompts.new(current_player.name)
      answer = gets.chomp
      
      if answer.to_i != prompts.sum
        puts "Srsly?! NO!"
        current_player.takes_a_hit
      end
      
      if answer.to_i == prompts.sum
        puts "YES! You're right!"
      end
      
      display_scoreboard
      
    end
    # game over
    game_over?
    puts "---------GAME-OVER---------"
    puts "#{@players.last.name} wins!"

  end
end