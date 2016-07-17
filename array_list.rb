require_relative "fixed_array"

class ArrayList
  def initialize(size)
    @array = FixedArray.new(size)
  end

  def add(element)
    @array = FixedArray.new(@array.length+1)
    @array.set(@array.length-1, element)
  end

  def get(index)
    @array.get(index)
  end

  def set(index, element)
    @array.set(index, element)
  end

  def length
    @array.length
  end

  def insert(index, element)
    get(index) #check that index is in range
    count = length-1
    add(@array.get(count))
    until count == index
      set(count,get(count-1))
      count -= 1
    end
    set(index, element)
  end
end
