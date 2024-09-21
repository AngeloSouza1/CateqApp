class PostagemsController < ApplicationController
  before_action :set_postagem, only: [:show, :edit, :update, :destroy]

  # GET /postagems or /postagems.json
  def index
    # @postagens = Postagem.includes(:comentarios).all
    @postagens = Postagem.order(:created_at) 

    
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

  def create
    @postagem = Postagem.new(postagem_params)
    @postagem.user = current_user
  
    if @postagem.save
      Notification.create(user: current_user, notifiable: @postagem, message_type: 'created')
      redirect_to @postagem, notice: 'Postagem criada com sucesso.'
    else
      render :new
    end
  end
  
  def update
    @postagem = Postagem.find(params[:id])
    
    if @postagem.update(postagem_params)
      Notification.create(user: current_user, notifiable: @postagem, message_type: 'updated')
      redirect_to @postagem, notice: 'Postagem atualizada com sucesso.'
    else
      render :edit
    end
  end
  
  def destroy
    @postagem = Postagem.find(params[:id])
    @postagem.destroy
    Notification.create(user: current_user, notifiable: @postagem, message_type: 'deleted')
    redirect_to postagems_path, notice: 'Postagem excluída com sucesso.'
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
