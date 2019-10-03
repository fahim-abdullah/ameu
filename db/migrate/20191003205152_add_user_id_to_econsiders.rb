class AddUserIdToEconsiders < ActiveRecord::Migration[5.2]
  def change
  	add_column :econsiders, :user_id, :integer
  end
end
