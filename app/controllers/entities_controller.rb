class EntitiesController < ApplicationController
  before_action :authenticate_user!
  def index
    @category = Category.find(params[:category_id])
    if can? :read, @category
      @entities = @category.category_with_entities.order(created_at: :desc)
      @total_amount = @category.total_amount

    else
      redirect_to(root_path, notice: 'you dont have access')
    end
  end

  def create
    choose = params[:choose]
    @entity = Entity.new
    @entity.user_id = current_user.id
    @entity.name = params[:name]
    @entity.amount = params[:amount]
    if choose.nil?
      flash.alert = 'you have to pick atleast one category'
      redirect_to(entities_new_path)
    end

    return unless @entity.save

    choose.each do |choice|
      category_with_entity = CategoryWithEntity.new
      category_with_entity.category = Category.find(choice)
      category_with_entity.entity = Entity.find(@entity.id)
      category_with_entity.save
    end
    redirect_to(root_path)
  end

  def new
    @categories = Category.where(user_id: current_user.id)
  end
end
