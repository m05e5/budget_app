class CategoriesController < ApplicationController
  before_action :checking

  def checking
    redirect_to(welcome_path) unless user_signed_in?
  end

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
