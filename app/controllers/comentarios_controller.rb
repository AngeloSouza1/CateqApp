class ComentariosController < ApplicationController
  before_action :set_postagem, only: [:create, :edit, :update, :destroy]
  before_action :set_comentario, only: [:edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def edit
  end
  

  def create
    @comentario = @postagem.comentarios.new(comentario_params)
    @comentario.user = current_user

    if @comentario.save
      redirect_to postagem_path(@postagem), notice: 'Comentário adicionado com sucesso.'
    else
      flash[:alert] = "Erro ao adicionar comentário. Verifique o conteúdo."
      redirect_to postagem_path(@postagem) # Redireciona de volta para a postagem
    end
  end
  
  def update
    @comentario = @postagem.comentarios.find(params[:id])
  
    if @comentario.update(comentario_params)
      # Notificação para o autor da postagem se o comentário for alterado e não for o mesmo usuário
      if @postagem.user != current_user
        Notification.create(user: @postagem.user, notifiable: @comentario, message_type: 'updated', message: "Comentário alterado na sua postagem: #{@postagem.title}")
      end
  
      # Notificação para o autor do comentário
      Notification.create(user: current_user, notifiable: @comentario, message_type: 'updated', message: "Seu comentário na postagem: #{@postagem.title} foi alterado.")
      redirect_to postagems_path, notice: 'Comentário atualizado com sucesso.'
    else
      render :edit
    end
  end




  def destroy
    @comentario = @postagem.comentarios.find(params[:id])
    @comentario.destroy
    Notification.create(user: current_user, notifiable: @comentario, message_type: 'deleted')
    redirect_to postagems_path, notice: 'Comentário removido com sucesso.'
  end
  private

  def set_postagem
    @postagem = Postagem.find(params[:postagem_id])
  end

  def set_comentario
    @comentario = @postagem.comentarios.find(params[:id])
  end

  def comentario_params
    params.require(:comentario).permit(:content)
  end

  def authorize_user!
    unless @comentario.user == current_user
      redirect_to @postagem, alert: 'Você não tem permissão para modificar este comentário.'
    end
  end
end
