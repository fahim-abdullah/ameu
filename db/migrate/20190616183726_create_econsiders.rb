class CreateEconsiders < ActiveRecord::Migration[5.2]
  def change
    create_table :econsiders do |t|
    	t.string :title
    	t.string :post_heading
    	t.string :author
    	t.text :post
    	t.timestamps
    end
  end
end