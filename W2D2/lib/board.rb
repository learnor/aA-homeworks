class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){[]}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, idx|
      4.times { cup << :stone } unless [6, 13].include? idx
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless (0..5).cover?(start_pos) || (7..12).cover?(start_pos)
  end

  def make_move(start_pos, current_player_name)

    hand = []
    @cups[start_pos].length.times { hand << @cups[start_pos].pop }
    place_pos = start_pos + 1
    until hand.empty?
      @cups[place_pos] << hand.pop
      place_pos += 1
      place_pos %= 14
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if
      :switch
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all? { |e| @cups[e].empty? } || (7..12).all? { |e| @cups[e].empty? }
  end

  def winner

  end
end
