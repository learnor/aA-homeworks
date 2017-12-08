# Exercise 1
class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

#Exercise 2
class Queue
  def initialize
    @queue = []
  end

  def add(el)
    @queue << el
    el
  end

  def remove
    @queue.shift
  end

  def show
    @queue.dup
  end
end

#Exercise 3
class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |pair|
      return pair[1] = value if pair[0] == key
    end
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
    nil
  end

  def remove(key)
    @map.each do |pair|
      return @map.delete(pair) if pair[0] == key
    end
  end

  def show
    @map.deep_dup
  end

  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
