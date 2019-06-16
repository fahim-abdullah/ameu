class RenamDlgPic < ActiveRecord::Migration[5.2]
  def change
  	rename_column :dialogues, :dlg_pic, :dialoguepic
  end
end
