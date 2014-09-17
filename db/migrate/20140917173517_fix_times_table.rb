class FixTimesTable < ActiveRecord::Migration
  def change
    rename_table :times, :sessions
  end
end
