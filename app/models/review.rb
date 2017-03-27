class Review

  attr_accessor :restaurant, :customer, :content


  ALL = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end






end
