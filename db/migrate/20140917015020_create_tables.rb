class CreateTables < ActiveRecord::Migration
  def change
    create_table :sanctuary do |t|
      t.string :name
      t.string :address
      t.timestamps
    end

    create_table :times do |t|
      t.time :time
      t.timestamps
    end

    create_table :sanctuary_times do |t|
      t.integer :sanctuary_id
      t.integer :time_id
      t.timestamps
    end
  end
end
