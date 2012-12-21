class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :quantity
      t.decimal :rate, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
