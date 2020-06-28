class Shoe
  attr_accessor :color, :size, :material, :condition  # remove the attr_accessor for genre
  attr_reader :brand, :unique_brand # add an attr_reader for genre
 
  BRANDS = []
 
  def initialize(brands)
    @brands = brands
  end
  
  brands.each do |brand|
    Shoe.new(brand)
  end
 
  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end
 
  # create the writer for genre and add the logic for the class constant
  def brands=(brands)
    @brands = brands
    BRANDS << brands 
  end
end