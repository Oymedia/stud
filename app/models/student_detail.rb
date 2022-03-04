class StudentDetail < ApplicationRecord
    validates :student_name, presence: true
    validates :parent_name, presence: true
    validates :email_id, presence: true, 
                uniqueness: { case_sensitive: false }, 
                length: { maximum:105 }

    
end
