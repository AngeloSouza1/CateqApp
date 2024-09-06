class PostagemsController < ApplicationController
  before_action :set_postagem, only: %i[ show edit update destroy ]

  # GET /postagems or /postagems.json
  def index
    @postagens = Postagem.includes(:comentarios).all
  end

  # GET /postagems/1 or /postagems/1.json
  def show
    @postagem = Postagem.find(params[:id])
  end

  # GET /postagems/new
  def new
    @postagem = Postagem.new
  end

  # GET /postagems/1/edit
  def edit
  end

  # POST /postagems or /postagems.json
  def create
    @postagem = Postagem.new(postagem_params)

    respond_to do |format|
      if @postagem.save
        format.html { redirect_to postagem_url(@postagem), notice: "Postagem was successfully created." }
        format.json { render :show, status: :created, location: @postagem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postagems/1 or /postagems/1.json
  def update
    respond_to do |format|
      if @postagem.update(postagem_params)
        format.html { redirect_to postagem_url(@postagem), notice: "Postagem was successfully updated." }
        format.json { render :show, status: :ok, location: @postagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postagems/1 or /postagems/1.json
  def destroy
    @postagem.destroy!

    respond_to do |format|
      format.html { redirect_to postagems_url, notice: "Postagem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postagem
      @postagem = Postagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postagem_params
      params.require(:postagem).permit(:title, :content, :user_id)
    end
end
