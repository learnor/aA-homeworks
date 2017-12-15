require "byebug"
class LRUCache
  def initialize(size)
    @lru_cache = Array.new(size
  end

  def count
    # returns number of elements currently in cache
    @lru_cache.reject { |el| el.nil? }.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    idx = @lru_cache.index(el)
    if idx
      @lru_cache.delete_at(idx)
      @lru_cache = [el] + @lru_cache
    else
      @lru_cache = [el] + @lru_cache[0...-1]
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    @lru_cache.reverse
  end

  private
  # helper methods go here!

end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})

  johnny_cache.show
