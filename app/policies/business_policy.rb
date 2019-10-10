class BusinessPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    @user.businesses.exists? if @user.present?
  end
  
  def edit?
    role = Role.find(3)
    @user.roles.exists?(role.id)
  end
end
