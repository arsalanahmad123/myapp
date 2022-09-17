class AddUserIdToPayment < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :user_id, :integer
  end
end
