class EntitiesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    if can? :read, @category
      @entities = @category.category_with_entities.order(created_at: :desc)
      @total_amount = 0
      @entities&.each do |trans|
        @total_amount += trans.entity.amount
      end
      @total_amount

    else
      redirect_to(root_path, notice: 'you dont have access')
    end
  end

  def create
    @category = Category.find(params[:cat])
    @entity = Entity.new
    @entity.user_id = current_user.id
    @entity.name = params[:name]
    @entity.amount = params[:amount]
    return unless @entity.save

    category_with_entity = CategoryWithEntity.new
    category_with_entity.category = @category
    category_with_entity.entity = Entity.find(@entity.id)
    redirect_to(root_path) if category_with_entity.save
  end

  def new
    @categories = Category.where(user_id: current_user.id)
  end
end
