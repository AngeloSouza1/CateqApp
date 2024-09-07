class AulasController < ApplicationController
  before_action :set_aula, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /aulas or /aulas.json
  def index
    @aulas = Aula.all
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

  # POST /aulas or /aulas.json
  def create
    @aula = Aula.new(aula_params)
    @aula.user = current_user

    respond_to do |format|
      if @aula.save
        format.html { redirect_to aula_url(@aula), notice: "Aula was successfully created." }
        format.json { render :show, status: :created, location: @aula }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aulas/1 or /aulas/1.json
  def update
    respond_to do |format|
      if @aula.update(aula_params)
        format.html { redirect_to aula_url(@aula), notice: "Aula atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @aula }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aulas/1 or /aulas/1.json
  def destroy
    @aula.destroy!

    respond_to do |format|
      format.html { redirect_to aulas_url, notice: "Aula was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aula
      @aula = Aula.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aula_params
      params.require(:aula).permit(:title, :content)
    end
end
