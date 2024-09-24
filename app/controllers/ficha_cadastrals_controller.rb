class FichaCadastralsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ficha_cadastral, only: [:edit, :update, :destroy]
  before_action :authorize_catequista, only: [:new, :create, :edit, :update]

  

  def index
    @ficha_cadastrals = FichaCadastral.all
  end

  # Catequistas podem criar novas fichas para catequizandos
  def new
    @ficha_cadastral = FichaCadastral.new
  end

  # Catequistas podem criar fichas cadastrando os dados
  def create
    @ficha_cadastral = FichaCadastral.new(ficha_cadastral_params)
    @ficha_cadastral.user = current_user
    if @ficha_cadastral.save
      redirect_to ficha_cadastrals_path, notice: 'Ficha cadastral criada com sucesso.'
    else
      render :new
    end
  end

 # Editar a ficha cadastral existente
 def edit
  @ficha_cadastral = FichaCadastral.find(params[:id])
end

   # Atualizar a ficha cadastral existente
   def update
    @ficha_cadastral = FichaCadastral.find(params[:id])

    if @ficha_cadastral.update(ficha_cadastral_params)
      redirect_to ficha_cadastrals_path, notice: 'Ficha Cadastral atualizada com sucesso.'
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

 # Permitir apenas catequistas acessarem a lista de fichas cadastrais
 def authorize_catequista
  redirect_to root_path, alert: 'Acesso não autorizado!' unless current_user.catequista?
end


  def ficha_cadastral_params
    params.require(:ficha_cadastral).permit(:nome, :endereco, :data_nascimento, :telefone, :faltas, :nota_desempenho, :user_id, :email)
  end
end
