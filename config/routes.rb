Rails.application.routes.draw do
  # Rotas do Devise para autenticação
  devise_for :users

  # Definir a rota raiz (página inicial) do aplicativo
  root 'aulas#index'

  # Rotas para Aulas
  resources :aulas

  # Rotas para Mensagens (com associação ao usuário)
  resources :mensagens

  # Rotas para Postagens (com associação ao usuário)
  resources :postagens
end

