class RenameSessionsToAppointments < ActiveRecord::Migration

  def change
    rename_table :sessions, :appointments
  end

  def change
    rename_column :sanctuaries_sessions, :session_id, :appointment_id
  end

  def change
    rename_table :sanctuaries_sessions, :appointments_sanctuaries
  end

end
