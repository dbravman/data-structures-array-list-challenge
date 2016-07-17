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
    raise "OutOfBoundsException" if @array.get(index) == nil
    @array.set(index, element)
  end

  def length
    @array.length
  end
end
