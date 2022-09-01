class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def chatroom?
    user == record.user || user == record.meal.user
  end

  def create?
    # user != record.user
    if user == record.user
      false
    else
      true
    end
  end
end
