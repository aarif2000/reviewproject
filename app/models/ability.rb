# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
  if user.present?
    user_role=user.current_role
    if user_role=="Hr"
      can :manage, User
      can :manage, :all
      can :manage, Event
      can :manage, Review
    else
      can :create, Review
      end 
  end
end
end


#cancancan

