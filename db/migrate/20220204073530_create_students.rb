class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :parent_name
      t.string :student_class
      t.string :syllabus
      t.string :subject
      t.string :phone_no
      t.string :email_id
      t.integer :course_duration
      t.string :reference

      t.timestamps
    end
  end
end
