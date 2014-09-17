class RenameTimeTableAndColumn < ActiveRecord::Migration
  def change
    rename_table :times, :sessions
  end
  def change
    rename_column :times, :name, :time
  end
end
