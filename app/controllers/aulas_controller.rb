class AulasController < ApplicationController
  before_action :set_aula, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /aulas or /aulas.json
  def index
    @aulas = Aula.order(:created_at)
  end

  # GET /aulas/1 or /aulas/1.json
  def show
  end

  # GET /aulas/new
  def new
    @aula = Aula.new
  end

  # GET /aulas/1/edit
  def edit
  end

    def create
      @aula = Aula.new(aula_params)
      @aula.user = current_user
  
      if @aula.save
        Notification.create(user: current_user, notifiable: @aula, message: "Aula criada: #{@aula.title}")
        redirect_to @aula, notice: 'Aula criada com sucesso.'
      else
        render :new
      end
    end
  
    def update
      @aula = Aula.find(params[:id])
      if @aula.update(aula_params)
        Notification.create(user: current_user, notifiable: @aula, message: "Aula alterada: #{@aula.title}")
        redirect_to @aula, notice: 'Aula alterada com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
      @aula = Aula.find(params[:id])
      @aula.destroy
      Notification.create(user: current_user, notifiable: @aula, message: "Aula removida: #{@aula.title}")
      redirect_to aulas_url, notice: 'Aula removida com sucesso.'
    end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aula
      @aula = Aula.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aula_params
      params.require(:aula).permit(:title, :content, :detailed_content, :image)
    end
end
