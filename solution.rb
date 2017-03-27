require 'pry'
class Customer
  attr_accessor :first_name, :last_name

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
    @reviews = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    ALL
  end

  def self.find_by_name(full_name)
    name_array = full_name.split(" ")
    Customer.all.collect do |person|
        if person.first_name == name_array[0] && person.last_name == name_array[1]
        end
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |person|
      person.first_name = name
    end
  end

  def add_a_review(restaurant, content)
    new_review = Review.new(restaurant, self, content)
  end

end
# Please copy/paste all three classes into this file to submit your solution!


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
