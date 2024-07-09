# frozen_string_literal: true

require 'colorize'

# The Game class initializes the board
class Game
  def initialize
    @answer = ['']
    @colors = %i[red light_green light_blue light_yellow light_magenta light_white]
    @total_turns = 12
  end

  def start
    loop do
      @colors.each do |color|
        print " #{'●'.colorize(color)} "
      end
      puts "\n"
      sleep 1
    end
  end
end
