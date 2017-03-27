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
