# app/controllers/notifications_controller.rb
class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def mark_as_read
    @notification = current_user.notifications.find(params[:id])
    
    if @notification.update(read: true)
      respond_to do |format|
        format.js   # Responde à requisição AJAX
      end
    else
      respond_to do |format|
        format.js { render inline: "alert('Erro ao marcar como lida');" }  # Para erro
      end
    end
  end
end
