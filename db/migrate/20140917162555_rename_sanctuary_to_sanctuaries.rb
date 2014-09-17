class RenameSanctuaryToSanctuaries < ActiveRecord::Migration
  def change
    rename_table :sanctuary, :sanctuaries
  end
end
