class Anime
  
  attr_accessor :type, :episodes, :score, :rated, :title, :name 
  
  @@all = []
  
  def initialize(attributes)
    attributes.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    end 
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
end 