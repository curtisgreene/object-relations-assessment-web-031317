class Restaurant
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.collect do |restaurant|
      restaurant.name = self.name
    end
  end


  def customers
    Review.all.collect do |restaurant|
      if restaurant.name = self.name
        Review.customer
      end
    end
  end


end
