class RenameSessionsTableToAppointments < ActiveRecord::Migration
  def change
    rename_table :sessions, :appointments
    rename_column :appointments_sanctuaries, :session_id, :appointment_id
  end
end
