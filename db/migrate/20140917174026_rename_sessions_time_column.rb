class RenameSessionsTimeColumn < ActiveRecord::Migration
  def change
    rename_column :sessions, :name, :time
  end
end
