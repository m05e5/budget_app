class CategoriesController < ApplicationController
  def index
    @categories = Category.where(user_id: current_user.id).order(updated_at: :desc)
  end

  def create
    @category = Category.new
    @category.user_id = current_user.id
    @category.name = params[:name]
    @category.icon = params[:icon]
    redirect_to(root_path, notice: 'category created succesfully') if @category.save
  end

  def new; end
end
