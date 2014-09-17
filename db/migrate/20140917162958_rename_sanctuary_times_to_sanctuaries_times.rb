class RenameSanctuaryTimesToSanctuariesTimes < ActiveRecord::Migration
  def change
    rename_table :sanctuary_times, :sanctuaries_times
  end
end
