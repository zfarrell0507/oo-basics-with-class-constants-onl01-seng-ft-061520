class Shoe
  attr_accessor :color, :size, :material, :condition  # remove the attr_accessor for genre
  attr_reader :brands, :unique_brand # add an attr_reader for genre
 
  BRANDS = ["Uggs", "Rainbow", "Nike", "Nike"]
 
  def initialize(brands)
    @brands = brands
  end
 
  def size
    
  end
 
  # create the writer for genre and add the logic for the class constant
  def brands=(brands)
    @brands = brands
    BRANDS << brands 
  end
end