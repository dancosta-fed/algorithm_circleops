class Isbn
  attr_accessor :digits
  def initialize(attributes = {})
    @digits = attributes[:digits]
  end
end
