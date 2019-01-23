class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def has_inventory
    if self.inventory > 0
      " Available"
    else
      " Sold Out"
    end
  end
end
