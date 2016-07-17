class FixedArray
  def initialize(size)
    @array = []
    size.times do
      @array << nil
    end
  end

  def get(index)
    raise "OutOfBoundsException" if index >= @array.length
    @array[index]
  end

  def set(index, element)
    raise "OutOfBoundsException" if index >= @array.length
    @array[index] = element  
  end

  def length
    @array.length
  end
end
