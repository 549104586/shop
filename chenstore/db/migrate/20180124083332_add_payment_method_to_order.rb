class AddPaymentMethodToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :add_payment_method, :string
  end
end
