class CreateDialogues < ActiveRecord::Migration[5.2]
  def change
    create_table :dialogues do |t|
    	t.string :title
    	t.string :interviewee
    	t.string :video_link
    	t.string :dlg_pic
    end
  end
end