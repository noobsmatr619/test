class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    t.integer :user_id
    t.float  :order_quantity
    t.float  :price
    # t.boolean  :order_type, default: false
    t.string   :order_type # could have made it a boolean making it buy/sell, but made a string as in future there can be statuses of other types for example held,not at stock etc
    t.timestamps
  end
end
end
