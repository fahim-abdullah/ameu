class AddProfpicToMembers < ActiveRecord::Migration[5.2]
  def change
  	add_column :members, :profpic, :string
  end
end
