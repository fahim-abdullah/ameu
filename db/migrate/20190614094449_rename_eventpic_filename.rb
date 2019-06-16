class RenameEventpicFilename < ActiveRecord::Migration[5.2]
  def change
  	rename_column :events, :eventpic_filename, :eventpic
  end
end
