class ComentariosController < ApplicationController

  before_action :set_postagem, only: [:create, :edit, :update, :destroy]
  before_action :set_comentario, only: [:edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  # def create
  #   @comentario = @postagem.comentarios.build(comentario_params)
  #   @comentario.user = current_user

  #   if @comentario.save
  #     redirect_to postagems_path, notice: 'Comentário adicionado com sucesso.'
  #   else
  #     redirect_to @postagem, alert: 'Erro ao adicionar comentário.'
  #   end
  # end
  # 
  #
  def create
    @comentario = @postagem.comentarios.build(comentario_params)
    @comentario.user = current_user
  
    if @comentario.save
      # Criação da notificação associada ao comentário
      Notification.create(user: @postagem.user, notifiable: @comentario)
      redirect_to postagem_path(@postagem), notice: "Comentário adicionado!"
    else
      redirect_to postagem_path(@postagem), alert: "Erro ao adicionar comentário."
    end
  end
  
  
  
  def edit
    # O form de edição será renderizado automaticamente
  end

  def update
    if @comentario.update(comentario_params)
      Notification.create(user: @comentario.user, notifiable: @comentario, message: "Comentário atualizado")
      redirect_to postagem_path(@postagem), notice: "Comentário atualizado!"
    else
      render :edit
    end
  end

  def destroy
    if @comentario.destroy
      redirect_to postagems_path, notice: 'Comentário removido com sucesso.'
    else
      redirect_to postagems_path, alert: 'Erro ao remover o comentário.'
    end
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
