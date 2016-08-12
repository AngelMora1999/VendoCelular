class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_categories

  protected
  def authenticate_checker!
  	redirect_to root_path, notice: "No eres un inspector" unless user_signed_in? && current_user.is_checker?
  end
  def authenticate_admin!
  	redirect_to root_path, notice: "No eres administrador" unless user_signed_in? && current_user.is_admin?
  end
  private
  def set_categories
  	@categories = Category.all
  end
end
