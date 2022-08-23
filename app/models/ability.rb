# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
          user_role=user.current_role
          hr_work if user_role == 'Hr'
  end
  return if user.nil?
end 
  
  def hr_work
    can :manage, User
    can :manage, :all

    can :manage ,Event

    # can :manage, Reviews

  end
end


