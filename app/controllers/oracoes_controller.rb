class OracoesController < ApplicationController
  before_action :set_oracao, only: %i[show edit update destroy]
  before_action :authenticate_user! # Garante que o usuário esteja logado para criar, editar ou excluir

  def index
    @oracoes = Oracao.order(created_at: :desc) #  para mostrar apenas as orações do usuário logado: Oracao.where(user: current_user)
  end

  def show
  end

  def new
    @oracao = Oracao.new
  end

  def create
    @oracao = Oracao.new(oracao_params)
    @oracao.user = current_user # Associa a oração ao usuário logado
    if @oracao.save
      redirect_to @oracao, notice: 'Oração criada com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @oracao.update(oracao_params)
      redirect_to @oracao, notice: 'Oração atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @oracao.destroy
    redirect_to oracoes_url, notice: 'Oração removida com sucesso.'
  end

  private

  def set_oracao
    @oracao = Oracao.find(params[:id])
  end

  def oracao_params
    params.require(:oracao).permit(:titulo, :conteudo)
  end
end
