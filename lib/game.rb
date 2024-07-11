# frozen_string_literal: true

require 'colorize'
require_relative 'game/utils'
require_relative 'game/menu_handling'

# The Game class initializes the board
class Game
  include Utils
  include MenuHandling

  def initialize
    @answer = ['']
    @colors = {
      r: :red,
      g: :light_green,
      b: :light_blue,
      y: :light_yellow,
      p: :light_magenta,
      w: :light_white
    }
    @total_turns = 12
  end
end
