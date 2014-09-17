class RenameSanctuariesTimesTable < ActiveRecord::Migration
  def change
    rename_table :sanctuaries_times, :sanctuaries_sessions
  end
end
