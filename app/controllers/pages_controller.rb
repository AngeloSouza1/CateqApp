# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  def home
    # Buscar as notificações do usuário logado, caso exista
    if user_signed_in?
      @notifications = current_user.notifications.order(created_at: :desc).limit(7)
      @total_postagens = current_user.postagems.count
      @total_comentarios = current_user.comentarios.count
      @total_aulas = Aula.count
    else
      @notifications = []
   
    end
  end
end
