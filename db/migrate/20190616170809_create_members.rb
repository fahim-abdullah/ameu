class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
    	t.string :region
    	t.string :office
    	t.string :name
    	t.string :designation
    	t.string :facebook
    	t.string :linkedin
    	t.string :twitter
    	t.string :ig
    	t.string :email
    end
  end
end