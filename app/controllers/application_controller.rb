class ApplicationController < ActionController::Base
  before_action :user_admin?, only: [:new, :create, :edit, :update, :destroy]

  private

  def user_admin?
    user_signed_in? && current_user.admin?
  end
end
