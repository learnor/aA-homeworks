fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fishes)
  fishes.each do |fish|
    return fish if fishes.dup.delete(fish).all? { |other_fish| other_fish.size < fish.size }
  end
end

sluggish_octopus(fishes)

class Array
  def merge_sort(&prc)
    return self if count < 2
    mid = count / 2
    left = take(mid).merge_sort(&prc)
    right = drop(mid).merge_sort(&prc)
    Array.merge(left, right, &prc)
  end

  private
  def merge(left, right, &prc)
    prc ||= Proc.new { |x, y| x <=> y }
    merged = []
    until left.empty? || right.empty?
      if prc.call(left.first, right.first) == -1
        merged << left.shift
      else
        merged << right.shift
      end
    end
    merged + left + right
  end
end

def dominant_octopus
  sorted_fish = fishes.merge_sort { |fish1, fish2| fish2.size <=> fish1.size }
  sorted_fish[0]
end

dominant_octopus(fishes)

def clever_octopus
  fishes.inject { |longest_fish, next_fish| longest_fish.size > next_fish ? longest_fish : next_fish }
end

clever_octopus(fishes)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, array)
  array.each_with_index do |tile, idx|
    return idx if tile == dir
  end
end

slow_dance("up", tiles_array)
slow_dance("right", tiles_array)

tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}
def constant_dance(dir, hash)
  hash[dir]
end

constant_dance("up", tiles_hash)
constant_dance("right", tiles_hash)
