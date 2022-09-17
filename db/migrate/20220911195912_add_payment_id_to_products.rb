class AddPaymentIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :payment_id, :integer
  end
end
