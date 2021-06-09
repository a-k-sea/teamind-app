class QuestionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("custom = false")
    end
  end

  def new?
    user.admin == true
  end

  def create?
    user.admin == true
  end
end
