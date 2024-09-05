class PagesController < ApplicationController
  def home
   
    @message = "Bem-vindo ao CateqApp!"
    # @aulas = Aula.all.limit(3)  
    # @postagens = Postagem.all.limit(3)  
  end
end
