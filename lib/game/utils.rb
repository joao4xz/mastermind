# frozen_string_literal: true

# The Utils module contains utility methods
module Utils
  def color_pegs(pegs)
    colored_pegs = pegs.split('').map do |color|
      " #{'●'.colorize(@colors[color.to_sym])}"
    end
    colored_pegs.join('')
  end

  def generate_random_pegs(colors)
    colors.keys.sample(4)
  end
end
