require_relative 'plane'

class Airport
  
  DEFAULT_CAPACITY = 5

  attr_reader :planes, :capacity

  def initialize 
    @planes = []
    @capacity = DEFAULT_CAPACITY
  end

  def land(plane)
    fail 'Airport full' if full?
    @planes << plane
  end

  def take_off(plane)
    @planes.delete(plane)
  end

  private

  def full?
    @planes.length >= @capacity
  end
          
end