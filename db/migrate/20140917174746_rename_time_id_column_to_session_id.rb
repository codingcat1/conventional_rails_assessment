class RenameTimeIdColumnToSessionId < ActiveRecord::Migration
  def change
    rename_column :sanctuaries_times, :time_id, :session_id
  end
end
