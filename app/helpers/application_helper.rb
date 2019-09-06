module ApplicationHelper
  def admin_signed?
    user_signed_in? && current_user.admin?
  end
end
