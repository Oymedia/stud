class CreateTeacherAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_availabilities do |t|
      t.string :tname
      t.date :day

      t.timestamps
    end
  end
end
