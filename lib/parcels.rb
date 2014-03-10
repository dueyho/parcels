class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @volume = @length * @width * @height
  end

  def cost_to_ship
    @cost_to_ship = 0.01 *(@volume * @weight)
  end
end
