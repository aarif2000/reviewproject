class Event < ApplicationRecord
    validates :title, presence: true
    validates :StartDate, presence: true
end
