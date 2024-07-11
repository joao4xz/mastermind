# frozen_string_literal: true

# The Utils module contains utility methods
module Utils
  def print_pegs(pegs)
    pegs.split('').each do |color|
      print " #{'●'.colorize(@colors[color.to_sym])}"
    end
  end
end
