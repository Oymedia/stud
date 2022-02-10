class StudentDetail < ApplicationRecord
    validates :student_name, presence: true
    validates :email_id, confirmation: true
end
