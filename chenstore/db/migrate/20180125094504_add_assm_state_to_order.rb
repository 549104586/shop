class AddAssmStateToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :assm_state, :string,default:"order_placed"
    add_index :orders, :aasm_state
  end
end
