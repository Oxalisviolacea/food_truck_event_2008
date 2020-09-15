class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.empty?
      return 0
    end
    @inventory.each do |item_name, amount|
      if item_name == item
        return amount
      end
    end
  end

  def stock(item, amount)
    if @inventory[item] == nil
      @inventory[item] = amount
    else
      @inventory[item] += amount
    end
  end
end
