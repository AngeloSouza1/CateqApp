class FichaCadastralsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ficha_cadastral, only: [:edit, :update, :destroy]
  before_action :authorize_catequista, only: [:new, :create, :edit, :update]

 
  def index
    if params[:catequista_id].present?
      # Filtra pelos catequizandos do catequista selecionado
      @ficha_cadastrals = FichaCadastral.where(catequista_id: params[:catequista_id])
    else
      # Mostra todos os catequizandos ordenados por updated_at e created_at
      @ficha_cadastrals = FichaCadastral.order(updated_at: :desc, created_at: :desc)
    end
  
    # Carrega todos os catequistas para o dropdown de seleção
    @catequistas = User.where(role: 'catequista')
  end
  
    
 

  def new
    @ficha_cadastral = FichaCadastral.new
  end

  def create
    @ficha_cadastral = FichaCadastral.new(ficha_cadastral_params)
    @ficha_cadastral.user = current_user # Relaciona a ficha ao usuário logado (caso seja necessário)
    if @ficha_cadastral.save
      redirect_to ficha_cadastrals_path, notice: 'Ficha cadastral criada com sucesso.'
    else
      render :new
    end
  end

  def edit
    # O set_ficha_cadastral já está buscando o objeto, não é necessário repetir.
  end

  def update
    # O set_ficha_cadastral já está buscando o objeto, não é necessário repetir.
    if @ficha_cadastral.update(ficha_cadastral_params)
      redirect_to ficha_cadastrals_path, notice: 'Ficha cadastral atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @ficha_cadastral.destroy
    redirect_to ficha_cadastrals_path, notice: 'Ficha cadastral foi excluída com sucesso.'
  end

  private

  def set_ficha_cadastral
    @ficha_cadastral = FichaCadastral.find(params[:id])
  end

  def authorize_catequista
    redirect_to root_path, alert: 'Acesso não autorizado!' unless current_user.catequista?
  end

  def ficha_cadastral_params
    params.require(:ficha_cadastral).permit(:nome, :endereco, :data_nascimento, :telefone, :email, :catequista_id)
  end
end
