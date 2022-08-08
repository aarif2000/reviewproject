# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
    if user.present?
          user_role=user.current_role
          hr_work if user_role == 'Hr'
          tl_work if user_role == 'Team Lead'
          se_work if user_role =='Software Engineer'
          ase_work if user_role =='Assistant Software Engineer'

  end
  return unless user.present?
end 
  
  def hr_work
    can :manage, :all 
  end

  def tl_work 
    can :Show, :all
  end

  def se_work
    can :Show, :all
    can :Create, :all

  end

  def ase_work
    can :Create, :all 

  end

  
end


