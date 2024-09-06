class ComentariosController < ApplicationController

  before_action :set_postagem
  before_action :set_comentario, only: [:edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def create
    @comentario = @postagem.comentarios.build(comentario_params)
    @comentario.user = current_user

    if @comentario.save
      redirect_to @postagem, notice: 'Comentário adicionado com sucesso.'
    else
      redirect_to @postagem, alert: 'Erro ao adicionar comentário.'
    end
  end

  def edit
    # O form de edição será renderizado automaticamente
  end

  def update
    if @comentario.update(comentario_params)
      redirect_to @postagem, notice: 'Comentário atualizado com sucesso.'
    else
      @comentarios = @postagem.comentarios
      render :edit, alert: 'Erro ao atualizar o comentário.'
    end
  end

  def destroy
    @comentario.destroy
    # redirect_to @postagem, notice: 'Comentário removido com sucesso.'
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
