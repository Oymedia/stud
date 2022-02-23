class CreateTeacherAvailabilityCalenders < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_availability_calenders do |t|
      t.string :techname
      t.date :day
      t.time :time

      t.timestamps
    end
  end
end
