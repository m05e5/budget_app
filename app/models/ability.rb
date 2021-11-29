# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :read, :all

    return unless user.present?

    can %i[read destroy create], Category, user: user
    can %i[read destroy create], Transaction, user: user
  end
end
