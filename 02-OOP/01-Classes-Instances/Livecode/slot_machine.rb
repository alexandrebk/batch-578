require 'pry'

class SlotMachine
  # state
  attr_reader :reels

  POSSIBLE_VALUES = %w[joker star bell seven cherry].reverse

  def initialize(reels)
    @reels = reels
  end

  # behavior
  def spin
    # roll the reel = modifier la valeur de @reels aleatoirement
    @reels = []
    3.times do
      @reels << POSSIBLE_VALUES.sample
    end

    # informer l'utilisateur du resultat
    puts "You rolled [#{@reels.join(' | ')}]"
    # calculer le score
    play_score = calculate_score
    # informer l'utilisateur de son score
    puts "Your score is #{play_score}"
    return play_score
  end



  # interface privée

  def calculate_score
    if three_same_symbols # @reels = [ joker, joker, joker]
      # (index + 1 de l'element dans possible POSSIBLE_VALUES)
      score = 10 * (POSSIBLE_VALUES.index(@reels.sample) + 1)
    elsif two_same_symbols_with_joker_or_two_jokers
      score = 5 * (POSSIBLE_VALUES.index(@reels.sort[1]) + 1)
    else
      score = 0
    end

    return score
  end

  def three_same_symbols
    @reels.uniq.size == 1
  end

  def two_same_symbols_with_joker_or_two_jokers
    @reels.uniq.size == 2 && @reels.include?('joker')
  end

end
