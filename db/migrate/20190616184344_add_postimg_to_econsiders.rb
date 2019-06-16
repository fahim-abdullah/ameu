class AddPostimgToEconsiders < ActiveRecord::Migration[5.2]
  def change
  	add_column :econsiders, :postimg, :string
  end
end
