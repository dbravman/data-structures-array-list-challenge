require_relative "fixed_array"

class ArrayList
  def initialize(size)
    @array = FixedArray.new(size)
  end
end
