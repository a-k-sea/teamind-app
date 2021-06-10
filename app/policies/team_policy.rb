class TeamPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:memberships).where("memberships.user_id = ?", user.id)
    end
  end

  def create?
    return true
  end

  def status?
    return record.owner == user
  end

  def show?
    return record.users.include?(user)
  end
end
