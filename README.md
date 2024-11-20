# Mastermind

## Description
This project is part of The Odin Project curriculum. It implements the game Mastermind where players attempt to guess a secret color combination. The game provides feedback after each guess, helping players deduce the correct sequence.

## Game Rules
- The computer generates a random sequence of 4 colors
- Players have 12 attempts to guess the correct sequence
- After each guess, feedback is provided:
  - Red peg (●): correct color in correct position
  - White peg (●): correct color in wrong position

## Available Colors
- Red (r)
- Green (g)
- Blue (b)
- Yellow (y)
- Magenta (p)
- White (w)

## Usage
```ruby
# Example of valid guesses:
rgby # Red, Green, Blue, Yellow
wpgr # White, Magenta, Green, Red
```

## Prerequisites
- Ruby installed on your system
- Bundler gem installed (`gem install bundler`)

## Required Gems
- colorize (~> 1.1)
- rubocop (~> 1.64)

## Installation
1. Clone this repository
    ```bash
    git clone https://github.com/joao4xz/mastermind.git
    ```
2. Navigate to the project directory
    ```bash
    cd mastermind
    ```
3. Install dependencies
    ```bash
    bundle install
    ```
4. Run the game:
    ```bash
    bundle exec ruby main.rb
    ```