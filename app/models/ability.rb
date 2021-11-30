class Ability
  include CanCan::Ability

  def initialize(user)
    # can :read, Category

    return unless user.present?

    can %i[read destroy create], Category, user: user
    can %i[read destroy create], Entity, user: user
  end
end
