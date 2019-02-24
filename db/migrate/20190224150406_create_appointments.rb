class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
    add_index :appointments, :teacher_id
    add_index :appointments, :student_id
  end
end
