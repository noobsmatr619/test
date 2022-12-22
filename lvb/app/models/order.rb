class Order < ActiveRecord::Base
  validates :user_id,:order_quantity,:price,:order_type, presence: true
  ORDER_TYPES = ["sell", "buy"]
  belongs_to :user
  
#   scope :order_ascending_price, -> { all.sort_by{|i| i.price} }
  scope :order_ascending_price, -> { order(price: :asc) }
  scope :order_descending_price, -> { order(price: :desc) }

  scope :sell, -> {where("order_type = 'sell'")}
  scope :buy, -> {where("order_type = 'buy'")}
 
  
   
    # Order.find_by_sql("SELECT *, SUM(`orders`.`order_quantity`) AS sum_order_quantity, price AS price FROM `orders` GROUP BY price")

end
