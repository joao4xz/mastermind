# frozen_string_literal: true

# The Menu Handling module controls the game menu
module MenuHandling
  def start_menu # rubocop:disable Metrics/MethodLength
    puts 'Welcome to Mastermind!'

    loop do
      puts "\nType [S] to start, [H] for help or [Q] to quit."
      menu_option = gets.chomp.downcase
      case menu_option
      when  's'
        puts 'Start'
      when  'h'
        print_help
      when  'q'
        puts 'Exiting...'
        break
      else
        puts 'Invalid option!'
      end
    end
  end

  def print_examples
    puts 'Example:'
    puts "\n   rbgp"
    print_pegs('rbgp')
    puts "\n\n   ypwr"
    print_pegs('ypwr')
  end

  def print_help # rubocop:disable Metrics/MethodLength
    puts "\nHow to Play Mastermind:\n\n"
    puts 'Mastermind is a code-breaking game. The objective is to guess the correct sequence of colors.'
    puts 'The code is a sequence of 4 colors chosen from: red, green, blue, yellow, magenta, and white.'
    puts 'You have 12 attempts to guess the correct code.'
    puts "After each guess, you'll receive feedback indicating how many colors are correct and in the correct position, and how many are correct but in the wrong position."
    print_examples
    puts "\n\nEach letter represents a color:\n"
    puts "r - red, g - green, b - blue, y - yellow, p - magenta, w - white\n\n"
    puts "Example feedback:  \n\n"
    print_pegs('rrww')
    puts "\n\n- A red peg indicates a correct color in a correct position."
    puts "- A white peg indicates a correct color in a wrong position.\n"
    puts 'Use this feedback to refine your guesses and crack the code!'
  end
end
