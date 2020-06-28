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


    it 'keeps track of all brands' do
      brands = ["Uggs", "Rainbow"]
      brands.each do |brand|
        Shoe.new(brand)
      end

      brands.each do |brand|
        expect(Shoe::BRANDS).to include(brand)
      end
    end

    it 'only keeps track of unique brands' do
      Shoe::BRANDS.clear
      brands = ["Uggs", "Rainbow", "Nike", "Nike"]
      brands.each do |brand|
        Shoe.new(brand)
      end

      expect(Shoe::BRANDS.size).to eq(3)
    end