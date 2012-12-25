class CreateOrdersProducts < ActiveRecord::Migration
  def up
  	create_table(:orders_products, :id => false) do |t|
  		t.integer :order_id
  		t.integer :product_id
  	end
  end

  def down
  	drop_table(:orders_products)
  end
end
