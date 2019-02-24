class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.references :subject, foreign_key: true
      t.string :name
      t.integer :teacher_id

      t.timestamps
    end

    add_index :skills, :teacher_id
  end
end
