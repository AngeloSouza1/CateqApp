class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :authenticate_user!  # Garante que o usuário esteja logado
  allow_browser versions: :modern
  before_action :load_notifications


  private

  def load_notifications
    if user_signed_in?
      @unread_notifications = current_user.notifications.unread
    end
  end
end
