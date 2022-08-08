class Role < ApplicationRecord
    has_many :typesrole 
    has_many :user, through: :typesrole
end
