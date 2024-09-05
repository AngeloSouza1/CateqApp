class PagesController < ApplicationController
  def home
    # Aqui você pode definir variáveis com dados iniciais que quer mostrar
    @message = "Bem-vindo à sua aplicação!"
    @aulas = Aula.all.limit(3)  
    @postagens = Postagem.all.limit(3)  
  end
end
