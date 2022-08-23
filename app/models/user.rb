class User < ApplicationRecord
  has_many :typesrole
  has_many :role, through: :typesrole
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

    validates :name, :email,:current_role, presence: :true 
      

          private 

         def after_confirmation 
          WelcomeMailer.send_greetings(self).deliver_now
         end

         
end
