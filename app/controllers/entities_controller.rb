class EntitiesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    if can? :read, @category
    @entities = @category.category_with_entities.all

    else
      redirect_to(root_path, notice: 'you dont have access')
    end
  end

  def create; end

  def new; end
end
