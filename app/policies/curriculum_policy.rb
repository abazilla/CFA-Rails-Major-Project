class CurriculumPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    if @user.has_role?(:admin) || @record.user == @user
      true
    else
      false
    end
  end

  def destroy?
    if @user.has_role?(:admin) || @record.user == @user
      true
    else
      false
    end
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
