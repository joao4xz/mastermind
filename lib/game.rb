require 'colorize'
require_relative 'game/utils'
require_relative 'game/menu_handling'

# The Game class initializes the board
class Game
  include Utils
  include MenuHandling

  def initialize # rubocop:disable Metrics/MethodLength
    @answer = ['']
    @guesses = []
    @colors = {
      r: :red,
      g: :light_green,
      b: :light_blue,
      y: :light_yellow,
      p: :light_magenta,
      w: :light_white
    }
    @total_turns = 12
    # 0: Running
    # 1: Win
    # 2: Lost
    @game_status = 0
  end

  def game_setup
    @answer = generate_random_pegs(@colors)
    game_start
  end

  def game_start # rubocop:disable Metrics/MethodLength
    while @game_status.zero?
      print_options
      puts "\nMake a guess:\n"
      guess = gets.chomp
      if guess_valid? guess
        feedback = feedback_guess guess
        @guesses.push({ guess: guess, feedback: feedback })
      end
      print_guesses @guesses
      @game_status = game_over? guess
    end
    reset_game
  end

  def guess_valid?(guess)
    if guess.length != 4
      puts 'Invalid length!'
      return false
    elsif !guess.split('').all? { |color| @colors.keys.any?(color.to_sym) }
      puts 'Invalid colors!'
      return false
    end
    true
  end

  def feedback_guess(guess)
    feedback = {}
    guess.split('').each_with_index do |color, index|
      if @answer[index] == color.to_sym
        feedback[color] = 'r'
      elsif @answer.find_index(color.to_sym)
        feedback[color] = 'w' if feedback[color] != 'r'
      end
    end
    feedback.values.sort.join
  end

  def game_over?(guess)
    if guess == @answer.join
      puts "\nYou won!"
      return 1
    elsif @guesses.length >= @total_turns
      puts "\nYou lost!"
      return 2
    end
    0
  end

  def print_guesses(guesses)
    print "\n"
    guesses.each do |guess|
      puts "Guess:#{color_pegs guess[:guess]} (#{guess[:guess]})  Feedback:#{color_pegs guess[:feedback]}\n"
    end
  end

  def print_options
    print "\nOptions:#{color_pegs 'rgbpyw'}  (rgbpyw)"
  end

  def reset_game
    @guesses = []
    @answer = ['']
    @game_status = 0
  end
end
