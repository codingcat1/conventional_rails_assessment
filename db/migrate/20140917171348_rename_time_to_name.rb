class RenameTimeToName < ActiveRecord::Migration
  def change
    rename_column :times, :time, :name
  end
end
