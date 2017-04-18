class CurriculumPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def update?
    false
    @record.user == @user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
