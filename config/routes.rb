# config/routes.rb
Rails.application.routes.draw do
  # Rotas do Devise para autenticação
  devise_for :users

  # Definir a rota raiz (página inicial) do aplicativo
  root 'pages#home'

  # Rotas para Aulas
  resources :aulas

  # Rotas para Postagens e Comentários
  resources :postagems do
    resources :mensagens, only: [:create, :destroy]
    resources :comentarios, only: [:create, :edit, :update, :destroy]
  end

  # Rotas para Notificações
  resources :notifications, only: [:index] do
    member do
      patch :mark_as_read
    end
  end

# Rotas Oracoes
resources :oracoes


end
