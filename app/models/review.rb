class Review < ApplicationRecord
    validates :employee_id, presence: true
    validates :title, presence: true
    validates :description, presence: true


end
