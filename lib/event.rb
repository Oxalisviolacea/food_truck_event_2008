class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    truck_names = []
    @food_trucks.each do |truck|
      truck_names << truck.name
    end
    truck_names
  end

  def food_trucks_that_sell(item)
    sells_item = []
    @food_trucks.each do |truck|
      if truck.inventory.include?(item)
      sells_item << truck
      end
    end
    sells_item
  end

  # def potential_revenue
  #   total_price = []
  #   @food_trucks.each do |truck|
  #     truck.inventory.each do |item|
  #       require "pry"; binding.pry
  #     end
  #   end
  #   total_price
  # end
end
