class CatequizandoController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_catequizando

  def dashboard
    @aulas = Aula.order(created_at: :desc)
    @oracoes = Oracao.order(created_at: :desc)
    @postagens = Postagem.order(created_at: :desc)
  end

  private
  def authorize_catequizando
    redirect_to root_path, alert: 'Acesso não autorizado!' unless current_user.catequisando?
  end
end
