class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :total
      t.integer :user_id
      t.string :billing_name
      t.string :billing_address
      t.string :shipping_name
      t.string :shipping_address
      t.string :token
      t.string :aasm_state, default:"order_placed"
      t.text :paid_at
      t.string :payment_method

      t.timestamps
    end
  end

  add_index :orders, :aasm_state
end
