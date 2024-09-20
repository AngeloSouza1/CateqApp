# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    # Buscar as notificações do usuário logado, caso exista
    if user_signed_in?
      @notifications = current_user.notifications.order(created_at: :desc).limit(5)
    else
      @notifications = []
    end
  end
end
