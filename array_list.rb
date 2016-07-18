require_relative "fixed_array"

class ArrayList
  def initialize(size)
    @array = FixedArray.new(size)
  end

  def add(element)
    new_array = FixedArray.new(length+1)
    for i in 0..length-1
      new_array.set(i, get(i))
    end
    new_array.set(length, element)
    @array = new_array
    element
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
    add(get(count))
    until count == index
      set(count,get(count-1))
      count -= 1
    end
    set(index, element)
  end
end
