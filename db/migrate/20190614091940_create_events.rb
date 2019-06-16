class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
    	t.string :title 
    	t.string :datetime
    	t.string :venue
    	t.string :link
    	t.string :eventpic_filename
    	t.timestamps
    end
  end
end