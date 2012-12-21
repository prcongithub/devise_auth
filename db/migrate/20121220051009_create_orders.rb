class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.date :dispatch_date
      t.decimal :total_price, :precision => 20, :scale => 2

      t.timestamps
    end
  end
end
